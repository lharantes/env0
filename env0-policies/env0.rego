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
  deploymentRequest: {
    type: string;
    triggerName: string;
    revision: string;
  };
  template: {
    type: string;
    repository: string;
  	path: string;
  	revision: string;
  	id: string;
  	name: string;
  };
  costEstimation: {
    totalMonthlyCost: number;
    monthlyCostDiff: number;
  };
  plan: object;
  deployerUser: {
 	  name: string;
    email: string;
    teams: {id: string; name: string;}[]
  };
  approvers: {
 	  name: string;
    email: string;
    teams: {id: string; name: string;}[]
  }[];
  variables: {
    environment: Record<string, string>;
    terraform: Record<string, string>;
    env0: Record<string, string>;
  };
  policyData: any
}
