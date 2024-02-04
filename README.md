# Pre-Commit Hooks

This repository contains custom [pre-commit](https://pre-commit.com/) hooks.
These are scripts that can be run before each commit.

## Installation

1. **Install Pre-Commit:**

   Ensure that `pre-commit` is installed on your system. You can install it using the following command:

   ```bash
   pip install pre-commit
   ```
   For more information on how to install `pre-commit`, please refer to the [official documentation](https://pre-commit.com/#installation).

2. **Create a `.pre-commit-config.yaml` file:**

   This file must be placed in the root of your project. Copy the hooks ids into it.
   
   Example:
   ``` yaml
   repos:
      - repo: https://github.com/Youconnect-Srl/mobile-app-pre-commit
        rev: v0.0.1
        hooks:
            - id: dart-format
              args: ['--line-length=120']
              exclude: '\.(freezed|g|mocks)\.dart$'
   ```

3. **Install the Hooks:**

   Run the following command to install the pre-commit hooks:

   ```bash
   pre-commit install
   ```

   This will set up the hooks specified in the file created in the previous step.

## Example Usage
After installation, the pre-commit hooks will run automatically before each commit. 
If there are any formatting or analysis issues, the commit will be blocked, 
and you will be prompted to address the issues before proceeding.

Example:
```
git commit -m "Add super awesome feature"
Fix End of Files.........................................................Passed
[main 146c6c2c] Add super awesome feature
1 file changed, 1 insertion(+)
```

In order to **skip** pre-commit checks at all it is possible to use the git parameter `--no-verify`

Example: 
```
git commit -m "my message" --no-verify
```



