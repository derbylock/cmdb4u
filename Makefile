clean:
	rm -Rf build

merge_modules:
	mkdir -p build
	# @for dir in $(shell ls modules); do echo "$${dir}"; done
	@for dir in $(shell ls modules); do cp --force --archive --update --link "modules/$${dir}/." build/; done
	# for dir in modules/*; do cp --force --archive --update --link "modules/${dir}" build; done

build: merge_modules
