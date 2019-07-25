run:
	@clear
	@find ./ -name "*.v"|xargs iverilog -Wportbind
	@vvp ./a.out
	@open -a gtkwave test.vcd
	@rm -f a.out
