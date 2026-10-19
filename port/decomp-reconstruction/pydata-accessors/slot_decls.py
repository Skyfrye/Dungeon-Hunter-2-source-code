# RETIRED (Ghidra-era helper of gen_structs.py and gen_script_cmd.py). Do not rerun those generators; the
# files they produced are hand-maintained source now (Track B decision 7).
"""Virtual finalize/read slots for the Structs and ScriptCmd record classes.

The original classes dispatch finalize (vtable +0x8) and read (+0xc) through the vtable: Arrays
elements call them that way (see NOTES.md, Arrays element ABI). So every finalize and read
declaration is virtual. A declaration that overrides an ancestor's declaration says `override`.

`declare_line(name, method, ancestors_with_method)` gives the declaration line for one method.
`virtualize_header(text)` rewrites the non-virtual declarations of an already generated header
in place; it is a one-off for committed files, and the generators use declare_line directly.
"""
import re

CLASS_RE = re.compile(r'^(class|struct) (\w+)(?: : (?:public )?(\w+))? \{$')
METHODS = ('finalize', 'read')


def declare_line(method, ancestor_declares):
    """Declaration line for `method`, given whether an ancestor already declares it virtual."""
    if method == 'finalize':
        sig = 'void finalize()'
    else:
        sig = 'void read(IStreamBase* stream)'
    return '    %s%s;' % ('' if ancestor_declares else 'virtual ', sig + (' override' if ancestor_declares else ''))


def virtualize_header(text):
    lines = text.split('\n')
    bases = {}
    cur = None
    # Pass 1: class -> base, and which methods each class declares.
    for ln in lines:
        m = CLASS_RE.match(ln)
        if m:
            cur = m.group(2)
            bases[cur] = m.group(3)
        elif ln == '};':
            cur = None
    # Pass 2: rewrite, walking the base chain for each method.
    def ancestor_declares(cls, method):
        b = bases.get(cls)
        while b is not None:
            if b in declared and method in declared[b]:
                return True
            b = bases.get(b)
        return False
    declared = {}
    cur = None
    for ln in lines:
        m = CLASS_RE.match(ln)
        if m:
            cur = m.group(2)
            declared[cur] = set()
        elif ln == '};':
            cur = None
        elif cur and re.match(r'^    (?:virtual )?void (finalize\(\)|read\(IStreamBase\* stream\))(?: override)?;$', ln):
            declared[cur].add('finalize' if 'finalize' in ln else 'read')
    out = []
    cur = None
    for ln in lines:
        m = CLASS_RE.match(ln)
        if m:
            cur = m.group(2)
        elif ln == '};':
            cur = None
        if cur and re.match(r'^    void finalize\(\);$', ln):
            ln = declare_line('finalize', ancestor_declares(cur, 'finalize'))
        elif cur and re.match(r'^    void read\(IStreamBase\* stream\);$', ln):
            ln = declare_line('read', ancestor_declares(cur, 'read'))
        out.append(ln)
    return '\n'.join(out)
