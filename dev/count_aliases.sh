#!/bin/sh

sed 's|//.*||' -- "$@" \
	| grep -Po "alias\s+\K[^\s]+" \
	| sort -u \
	| tee /dev/stderr \
	| wc -l
