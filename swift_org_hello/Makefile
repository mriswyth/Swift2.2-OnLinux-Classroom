app_name = swift_org_hello
debug = 1

source_dir = Sources
output_dir = .build
SWIFTC = swiftc
SWIFTC_OPTS = 

ifeq ($(debug),1)
	SWIFTC_OPTS += -g
endif

sources = $(shell find $(source_dir) -name '*.swift')

all: $(output_dir)/$(app_name)

$(output_dir)/$(app_name): $(sources)
	mkdir -p $(output_dir)
	$(SWIFTC) $(SWIFTC_OPTS) $(sources) -o $@

.PHONY: clean
clean:
	rm -r $(output_dir)
