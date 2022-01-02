clean:
	rm ./build/*
compile:
	echo "compiling......"
	@iverilog -o ./build/a.out ./src/*.v && echo "======successfully=======\n" && vvp ./build/a.out #compile successfully
pinballtest:
	echo "compiling......"
	@iverilog -o ./build/a.out ./src/pine*.v && echo "======successfully=======\n" && vvp ./build/a.out #compile successfully
timedivider_test:
	echo "compiling......"
	@iverilog -o ./build/a.out ./src/time_divider.v ./src/time_divider_tb.v&& echo "======successfully=======\n" && vvp ./build/a.out #compile successfully