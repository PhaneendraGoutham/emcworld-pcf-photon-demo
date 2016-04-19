#!/usr/bin/env bash

set -e

source app-src/ci/tasks/utils.sh

check_param application_name
check_param application_domain
check_param application_hostname
check_param num_instances
check_param cloud
check_param dashboard_url
check_param redis_service_name

manifests_dir="${PWD}/manifests"
manifest_file="${manifests_dir}/manifest-${cloud}.yml"

application_version=`cat app-version/number`

echo "Creating manifest ${manifest_file}..."
cat > ${manifest_file} <<EOF
---
applications:
 - name: ${application_name}
   domain: ${application_domain}
   host: ${application_hostname}
   instances: ${num_instances}
   memory: 256M
   disk_quota: 256M
   env:
     cloud: ${cloud}
     dashboard: ${dashboard_url}
     version: ${application_version}
   services:
     - ${redis_service_name}
EOF
