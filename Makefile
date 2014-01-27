.PHONY: all site-copy clean
all: site-copy

site-copy: src/*
	# we could run a templating engine here, or just copy as we do below
	rsync -a src/* build

clean:
	rm -rf build
