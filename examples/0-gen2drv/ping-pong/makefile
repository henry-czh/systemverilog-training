compile :
	@cd tmp_db; vcs -full64 -lca -kdb -sverilog -debug_access+all -timescale=1ns/1ns -f ../test.f

test :
	@cd tmp_db; ./simv 

gui :
	@cd tmp_db; verdi -ssf novas.fsdb -f ../test.f

