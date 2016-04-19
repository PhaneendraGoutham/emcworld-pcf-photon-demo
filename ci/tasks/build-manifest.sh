#!/usr/bin/env bash

set -e

source app-src/ci/tasks/utils.sh

check_param application_name
check_param num_instances
manifests_dir="${PWD}/manifests"
manifest_file="${manifests_dir}/manifest.yml"

echo "Creating manifest ${manifest_file}..."
cat > ${manifest_file} <<EOF
---
applications:
 - name: ${application_name}
   host: ${application_name}
   instances: ${num_instances}
   memory: 512M
   disk_quota: 512M
   path: {PWD}/build/libs/cities-service.jar

   env:
     SPRING_PROFILES_ACTIVE: cloud
EOF
