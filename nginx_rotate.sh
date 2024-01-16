#!/bin/bash

readonly root_dir=$(dirname $0)
readonly log_dir=${root_dir}/logs/nginx
readonly new_log_dir=${root_dir}/logs/nginx/rotate_$(date +%Y%m%d-%H%M%S)

mkdir -p $new_log_dir
mv $log_dir/*.log $new_log_dir

podman compose restart nginx
