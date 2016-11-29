$(tar): $(tar).o
	ld -o $@ $<

$(tar).o: $(tar).s
	as -o $@ $<
