.PHONY: build run clean

build:
	docker build -t ds-anaconda .

run:
	docker run --rm -p 8888:8888 -v $(PWD):/workspace ds-anaconda

clean:
	docker system prune -f
