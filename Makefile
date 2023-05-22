SHELL := /bin/bash

.PHONY: init start systemd

init:
	bash init.sh

start:
	bash start.sh

systemd:
	bash systemd.sh