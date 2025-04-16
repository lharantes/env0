package env0

# METADATA
# title: Require Approval
# description: require 1 approval
pending[format(rego.metadata.rule())] {
	count(input.approvers) < 1
}

format(meta) := meta.description

has_key(x, k) {
  _ = x[k]
}

cost_approvers := "cfd5b805-6568-4a07-a5fc-7f0b594d848d"  # Cost Approvers

allow[format(rego.metadata.rule())] {
  any_approver_present
}

any_approver_present {
  input.approvers[_].teams[_].id == cost_approvers
}
