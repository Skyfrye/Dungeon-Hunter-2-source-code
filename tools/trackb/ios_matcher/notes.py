exec(open('tie.py').read().split("c=0\nfor r in rows")[0])
want=sys.argv[1:]
for r in rows:
    if r['elf_address'] in want:
        print('==',r['elf_address'],r['symbol'][:70]); print(r['notes'][:1300]); print()
