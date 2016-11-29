tar = hello_linux

$(tar): $(tar).o
	ld -o $@ $<

$(tar).o: $(tar).s
	as -o $@ $<
