#!/bin/bash

event_list=(\
check_run \
check_suite \
commit_comment \
create \
delete \
deployment \
deployment_status \
fork \
gollum \
issue_comment \
issues \
label \
member \
milestone \
page_build \
project \
project_card \
project_column \
public \
pull_request \
pull_request_review \
pull_request_review_comment \
push \
repository_dispatch \
status \
watch \
)

for _e in ${event_list[@]}
do
  cat .github/event_base.yml | sed "s/EVENT_NAME/${_e}/g" > ".github/workflows/event_${_e}.yml"
done
