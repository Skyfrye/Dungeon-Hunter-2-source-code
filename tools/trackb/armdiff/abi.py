"""ABI helpers: Itanium nested names, LLVM IR signatures, AAPCS (soft-float) argument assignment.

The reconstructed side is compiled by the NDK clang. Its LLVM IR gives the exact ARM calling
convention view of each function (parameter widths, zero/sign extension, sret, `this`), which is
what the input generator needs. The original library has no type information, so the
reconstructed signature stands in for it (mangled names must match for a function to be compared).
"""
from __future__ import annotations

import re
import subprocess
from dataclasses import dataclass, field


# ----- Itanium mangled names (just enough for function ownership) -------------------------------

def _skip_sub(s: str, i: int) -> int:
    """s[i] == 'S' (substitution) or 'T' (template parameter). Return the index after it."""
    c = s[i]
    if c == "S" and i + 1 < len(s) and s[i + 1] in "tabsiod":
        return i + 2
    j = s.index("_", i)
    return j + 1


def _skip_template_args(s: str, i: int) -> int:
    """s[i] == 'I'. Return the index just after the matching 'E'."""
    depth = 1
    i += 1
    n = len(s)
    while depth and i < n:
        c = s[i]
        if c.isdigit():
            j = i
            while j < n and s[j].isdigit():
                j += 1
            i = j + int(s[i:j])
        elif c in "INX":
            depth += 1
            i += 1
        elif c == "E":
            depth -= 1
            i += 1
        elif c == "L":
            i = s.index("E", i) + 1
        elif c in "ST":
            i = _skip_sub(s, i)
        else:
            i += 1
    return i


@dataclass
class MangledFn:
    symbol: str
    kind: str                  # 'method' | 'ctor' | 'dtor' | 'free' | 'other'
    owner: str | None          # mangled prefix of the owning class ("14AnimController"), None for free functions
    owner_nested: bool = False # True when the owner prefix needs N...E around it (several components)
    is_const: bool = False
    name: str = ""             # last component (method name) as mangled text
    params_mangled: str = ""   # text after the function name (the <bare-function-type>)


def parse_function_symbol(sym: str) -> MangledFn:
    """Split `_ZN14AnimController8StopClipEbj` into owner class and parameter encoding."""
    if not sym.startswith("_Z"):
        return MangledFn(sym, "free", None, name=sym)
    s = sym
    i = 2
    if s.startswith("_ZN"):
        i = 3
        is_const = False
        while i < len(s) and s[i] in "rVK":
            if s[i] == "K":
                is_const = True
            i += 1
        comps: list[tuple[int, int]] = []   # (start, end) of each component in s
        n = len(s)
        try:
            while i < n and s[i] != "E":
                c = s[i]
                st = i
                if c.isdigit():
                    j = i
                    while j < n and s[j].isdigit():
                        j += 1
                    i = j + int(s[i:j])
                elif c in "ST":
                    i = _skip_sub(s, i)
                elif c == "I":
                    i = _skip_template_args(s, i)
                    # template args belong to the previous component
                    if comps:
                        comps[-1] = (comps[-1][0], i)
                    continue
                elif c in "CD" and i + 1 < n and s[i + 1].isdigit():
                    i += 2
                elif c.islower():
                    # operator name: two lowercase letters (cv adds a type, handled coarsely)
                    i += 2
                else:
                    return MangledFn(sym, "other", None)
                comps.append((st, i))
        except (ValueError, IndexError):
            return MangledFn(sym, "other", None)
        if i >= n or not comps:
            return MangledFn(sym, "other", None)
        params = s[i + 1:]
        last = s[comps[-1][0]:comps[-1][1]]
        kind = "method"
        if last[:1] == "C" and last[1:2].isdigit():
            kind = "ctor"
        elif last[:1] == "D" and last[1:2].isdigit():
            kind = "dtor"
        if len(comps) == 1:
            return MangledFn(sym, kind, None, False, is_const, last, params)
        owner_text = s[comps[0][0]:comps[-2][1]]
        return MangledFn(sym, kind, owner_text, len(comps) > 2, is_const, last, params)
    # free function: _Z<len><name><params>
    m = re.match(r"_Z(\d+)", s)
    if m:
        n = int(m.group(1))
        start = m.end()
        return MangledFn(sym, "free", None, False, False, s[start:start + n], s[start + n:])
    return MangledFn(sym, "other", None)


def vtable_symbol_for(fn: MangledFn) -> str | None:
    """`_ZTV...` name of the owning class, or None."""
    if fn.owner is None:
        return None
    if fn.owner_nested:
        return f"_ZTVN{fn.owner}E"
    # a single-component owner: if it's a plain <len><name> there is no N...E wrapper
    if fn.owner[:1].isdigit() and not any(c in fn.owner for c in "IS"):
        return f"_ZTV{fn.owner}"
    return f"_ZTVN{fn.owner}E"


def demangle_all(names: list[str], cxxfilt: str) -> dict[str, str]:
    """Batch demangle through llvm-cxxfilt (one process)."""
    if not names:
        return {}
    inp = "\n".join(names) + "\n"
    r = subprocess.run([cxxfilt], input=inp, capture_output=True, text=True, check=False)
    out = r.stdout.splitlines()
    if len(out) != len(names):
        return {n: n for n in names}
    return dict(zip(names, out))


# ----- LLVM IR signatures ------------------------------------------------------------------------

def _split_top(s: str, sep: str = ",") -> list[str]:
    out, depth, cur, q = [], 0, [], False
    for ch in s:
        if ch == '"':
            q = not q
        if not q:
            if ch in "([{<":
                depth += 1
            elif ch in ")]}>":
                depth -= 1
            elif ch == sep and depth == 0:
                out.append("".join(cur).strip())
                cur = []
                continue
        cur.append(ch)
    tail = "".join(cur).strip()
    if tail:
        out.append(tail)
    return out


@dataclass
class IRParam:
    ty: str                     # 'ptr', 'i32', 'i1', 'i8', 'i16', 'i64', 'float', 'double', '[3 x i32]', ...
    name: str = ""
    zeroext: bool = False
    signext: bool = False
    nonnull: bool = False
    deref: int = 0              # dereferenceable(N)
    sret: bool = False
    byval: bool = False
    noundef: bool = False
    inreg: bool = False

    @property
    def is_this(self) -> bool:
        return self.name == "this"


@dataclass
class IRSig:
    symbol: str
    ret: str                    # 'void', 'i32', 'ptr', 'float', ...
    ret_zeroext: bool
    ret_signext: bool
    params: list[IRParam]
    linkage: str                # 'external', 'internal', 'linkonce_odr', ...

    @property
    def has_this(self) -> bool:
        return any(p.is_this for p in self.params)

    @property
    def has_sret(self) -> bool:
        return any(p.sret for p in self.params)

    def to_json(self) -> dict:
        return {
            "symbol": self.symbol, "ret": self.ret, "ret_zeroext": self.ret_zeroext, "ret_signext": self.ret_signext,
            "linkage": self.linkage,
            "params": [p.__dict__ for p in self.params],
        }

    @staticmethod
    def from_json(d: dict) -> "IRSig":
        return IRSig(d["symbol"], d["ret"], d["ret_zeroext"], d["ret_signext"], [IRParam(**p) for p in d["params"]], d["linkage"])


_TYPE_RE = re.compile(r"^(i\d+|ptr|float|double|void|half|\[\d+ x [^\]]+\]|<[^>]+>|\{[^}]*\})$")
_LINKAGES = ("internal", "private", "linkonce_odr", "linkonce", "weak_odr", "weak", "external", "available_externally", "common")


def _find_matching(s: str, i: int) -> int:
    """s[i] == '('. Return the index of the matching ')', respecting quotes."""
    depth, q = 0, False
    for j in range(i, len(s)):
        ch = s[j]
        if ch == '"':
            q = not q
        if q:
            continue
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth -= 1
            if depth == 0:
                return j
    return -1


def parse_define(line: str) -> IRSig | None:
    if not line.startswith("define "):
        return None
    at = line.find(" @")
    if at < 0:
        return None
    pre = line[7:at]
    j = at + 2
    if line[j] == '"':
        k = line.index('"', j + 1)
        name = line[j + 1:k]
        j = k + 1
    else:
        m = re.match(r"[\w.$\-]+", line[j:])
        name = m.group(0)
        j += m.end()
    name = name.lstrip("\x01")
    if line[j] != "(":
        return None
    close = _find_matching(line, j)
    if close < 0:
        return None
    args = line[j + 1:close]
    toks = pre.split()
    # return type is the last token that looks like a type (array/struct types may contain spaces)
    ret_part = pre
    linkage = "external"
    for lk in _LINKAGES:
        if re.search(rf"\b{lk}\b", pre):
            linkage = lk
            break
    # strip attributes to find the type
    m = re.search(r"(i\d+|ptr|float|double|void|half|\[\d+ x [^\]]+\]|<[^>]+>|\{[^}]*\})\s*$", ret_part)
    ret = m.group(1) if m else "?"
    ret_attrs = ret_part[:m.start()] if m else ret_part
    sig = IRSig(name, ret, "zeroext" in ret_attrs.split(), "signext" in ret_attrs.split(), [], linkage)
    for a in _split_top(args):
        if a == "...":
            continue
        # first token is the type; may be '[3 x i32]' etc.
        mt = re.match(r"(\[\d+ x [^\]]+\]|<[^>]+>|\{[^}]*\}|\S+)\s*(.*)$", a)
        if not mt:
            continue
        ty, rest = mt.group(1), mt.group(2)
        p = IRParam(ty)
        mn = re.search(r"%([\w.$\-]+|\"[^\"]*\")\s*$", rest)
        if mn:
            p.name = mn.group(1).strip('"')
            rest = rest[:mn.start()]
        words = rest.split()
        p.zeroext = "zeroext" in words
        p.signext = "signext" in words
        p.nonnull = "nonnull" in words
        p.noundef = "noundef" in words
        p.inreg = "inreg" in words
        md = re.search(r"dereferenceable\((\d+)\)", rest)
        if md:
            p.deref = int(md.group(1))
        p.sret = "sret(" in rest
        p.byval = "byval(" in rest
        sig.params.append(p)
    return sig


def parse_ir_signatures(ll_text: str) -> dict[str, IRSig]:
    out: dict[str, IRSig] = {}
    for line in ll_text.splitlines():
        if line.startswith("define "):
            s = parse_define(line)
            if s:
                out[s.symbol] = s
    return out


# ----- AAPCS (soft-float, ARM32) argument assignment -----------------------------------------------

def _ty_words(ty: str) -> tuple[int, int]:
    """(size in 4-byte words, alignment in bytes) for a coerced IR type."""
    if ty in ("ptr", "i32", "float"):
        return 1, 4
    if ty in ("i1", "i8", "i16"):
        return 1, 4
    if ty in ("i64", "double"):
        return 2, 8
    m = re.match(r"\[(\d+) x (\w+)\]", ty)
    if m:
        n = int(m.group(1))
        el = m.group(2)
        ew, ea = _ty_words(el)
        return n * ew, ea
    raise ValueError(f"unsupported IR parameter type {ty!r}")


@dataclass
class ArgSlot:
    """Where parameter `index` lives: registers r0..r3 and/or stack words (offset from SP in words)."""
    index: int
    reg_words: list[int] = field(default_factory=list)      # register numbers
    stack_words: list[int] = field(default_factory=list)    # stack word indices


def assign_args(sig: IRSig) -> tuple[list[ArgSlot], int]:
    """AAPCS rule set for core-register-only arguments. Returns (slots, total stack words)."""
    ncrn = 0
    nsaa = 0  # in words
    slots = []
    for idx, p in enumerate(sig.params):
        if p.byval:
            raise ValueError("byval parameters are not supported")
        w, al = _ty_words(p.ty)
        slot = ArgSlot(idx)
        if al == 8 and ncrn % 2:
            ncrn += 1
        for _ in range(w):
            if ncrn < 4:
                slot.reg_words.append(ncrn)
                ncrn += 1
            else:
                if al == 8 and not slot.stack_words and nsaa % 2:
                    nsaa += 1
                slot.stack_words.append(nsaa)
                nsaa += 1
        slots.append(slot)
    return slots, nsaa
