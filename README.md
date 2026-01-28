# OpenTofu Linter Test

This repo tests a GitHub Actions workflow that runs OpenTofu and YAML linting on pull requests.

## GitHub repo configuration

Once you push this code, you need to set up branch protection so PRs cant be merged without passing checks.

Go to Settings, then Branches, then Add Rule. Set the branch name pattern to `main` and enable these options:

- Require a pull request before merging
- Require status checks to pass before merging (search for `Lint` and add it)
- Require approvals (set to 1)
- Do not allow bypassing the above settings

Save the rule.

## Testing

Create a new branch and open a PR that introduces a formatting error. For example, add this to any `.tf` file:

```hcl
variable "test" {
  default="broken"
}
```

The `Lint` check will fail because theres no spaces around the `=`. Push a fix and the check will pass, allowing the PR to be merged.
