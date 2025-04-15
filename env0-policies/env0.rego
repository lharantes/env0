package env0

# METADATA
# title: Require Approval
# description: require 1 approval
pending[format(rego.metadata.rule())] {
	count(input.approvers) < 1
}

# METADATA
# title: Allow if got approved
# description: approved
allow[format(rego.metadata.rule())] {
	count(input.approvers) >= 1
}

format(meta) := meta.description

{
  "deploymentRequest": {
    "type": "deploy",
    "triggerName": "user",
    "revision": "null-module"
  },
  "template": {
    "id": "f3295e3c-b1eb-40cb-9eee-aa3ddd640115",
    "name": "env0-kv",
    "type": "terraform",
    "repository": "hhttps://github.com/arodrigues1970/env0",
    "path": "environments/dev/azure/keyv",
    "revision": "main"
  },
  "costEstimation": {
    "totalMonthlyCost": 0,
    "monthlyCostDiff": 0
  },
  "plan": {
    ...{ /* OpenTofu/Terraform https://opentofu.org/docs/internals/json-format/#plan-representation */ },
    ...{ /* CloudFormation
             Deploy - https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeChangeSet.html
             Destroy - https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ListStackResources.html 
         */ 
    },
  },
  "deployerUser": {
    "name": "Rafael Afonso",
    "email": "ratafonso@gmail.com",
    "teams": [{"id": "7b3f0443-0f95-4ea9-b255-2d74a1127944", "name": "Developers Team"}]
  },
  "approvers": [
    {
      "name": "Renato Pereira",
      "email": "renatopereira00@gmail.com",
      "teams": [{"id": "cfd5b805-6568-4a07-a5fc-7f0b594d848d", "name": "Approvers Team"}]
    }
  ]
}