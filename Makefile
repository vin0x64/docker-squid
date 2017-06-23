all: build

build: 
	@docker build --tag=vin0x64/squid .

nocache: 
	@docker build --no-cache --tag=vin0x64/squid .
