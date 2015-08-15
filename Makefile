MRUBY_COMMIT ?= 1.0.0

all: vendor/mruby
	cp vendor/mruby/build/host/lib/libmruby.a .

clean:
	rm -rf vendor
	rm -f libmruby.a

# libmruby.a: vendor/mruby
# cd vendor/mruby && ${MAKE}

vendor/mruby:
	mkdir -p vendor
	git clone https://github.com/mruby/mruby.git vendor/mruby
	# cd vendor/mruby && git reset --hard && git clean -fdx
	# cd vendor/mruby && git checkout ${MRUBY_COMMIT}
	cp -p ./build_config.rb ./vendor/mruby
	cd vendor/mruby && rake

.PHONY: all clean libmruby.a test
