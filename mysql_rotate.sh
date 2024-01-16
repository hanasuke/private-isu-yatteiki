#!/bin/bash

readonly root_dir=$(dirname $0)
readonly log_dir=${root_dir}/logs/mysql
readonly rotate_date=$(date +%Y%m%d-%H%M%S)

mv $log_dir/slow-query.log mv $log_dir/slow-query.log.${rotate_date}
touch $log_dir/slow-query.log
chmod 777 $log_dir/slow-query.log

podman compose restart mysql
