tar = simply_exit

$(tar): $(tar).o
	ld -o $@ $<

$(tar).o: $(tar).s
	as -o $@ $<
