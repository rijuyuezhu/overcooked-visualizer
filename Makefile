.PHONY: log pipe all

all: log

LVL ?= 1-1
pipe:
	export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libstdc++.so.6;\
		python3 ./visualize.py $(LVL) 1
	
log:
	export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libstdc++.so.6;\
		python3 ./visualize.py $(LVL) 0
