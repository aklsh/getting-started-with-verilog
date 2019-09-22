run:
	@clear
	@find . -type f  -name "*.v"|xargs iverilog -Wall
	@vvp ./a.out
	@open -a gtkwave test.vcd
	@rm -f ./a.out
