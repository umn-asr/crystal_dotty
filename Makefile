all: bin

test:
	crystal spec

bin: clean
	crystal build -s --release -o dotty src/main.cr

clean:
	rm -f dotty

run:
	crystal run src/dotty.cr
