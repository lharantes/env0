package env0

# Description: Require at least one approver from the Cost Approvers team

# Constant: Team ID for Cost Approvers
cost_approvers_team_id := "cfd5b805-6568-4a07-a5fc-7f0b594d848d"

# Rule: Require at least one approver
pending["Require at least one approver"] {
    count(input.approvers) < 1
}

# Rule: Allow if any approver is from the Cost Approvers team
allow["At least one approver is from the Cost Approvers team"] {
    any_approver_in_cost_team
}

# Helper: Check if any approver is in the cost approvers team
any_approver_in_cost_team {
    some i, j
    input.approvers[i].teams[j].id == cost_approvers_team_id
}
