all: pdf view

pdf:
	make -C ./src

view:
	evince build/CV.pdf &

clean:
	rm -r build
