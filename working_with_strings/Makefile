FLAGS = -gstabs

$(TAR): $(TAR).o
	ld -o $@ $<

$(TAR).o: $(TAR).s
	as -o $@ $(FLAGS) $<

clean:
	rm -f $(TAR).*
