#!/bin/bash

pushd /home/tbecker/git/kernel
git maintenance run --task prefetch --task loose-objects \
	--task incremental-repack --task pack-refs --task gc --task commit-graph
popd
