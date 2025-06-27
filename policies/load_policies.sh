

conjur policy update -f root.yml -b dev-demo
conjur policy update -f root.branch.yml -b dev-demo/development
conjur policy update -f root.branch.yml -b dev-demo/test
conjur policy update -f root.branch.yml -b dev-demo/acceptance
conjur policy update -f root.branch.yml -b dev-demo/production

conjur policy update -f <(cat workloads/*) -b dev-demo/development
conjur policy update -f <(cat workloads/*) -b dev-demo/test
conjur policy update -f <(cat workloads/*) -b dev-demo/acceptance
conjur policy update -f <(cat workloads/*) -b dev-demo/production
