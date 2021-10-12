# porter-update-action

This Github action updates an app deployment running on Porter.

Usage
---
```yaml
steps:
  - name: Checkout code
    uses: actions/checkout@v2.3.4
  - name: Run a Porter CLI command
    uses: porter-dev/porter-update-action@v0.1.0
    with:
      command: version
    env:
      PORTER_HOST: https://dashboard.getporter.dev
      PORTER_CLUSTER: 1234
      PORTER_PROJECT: 4321
      PORTER_TOKEN: ${{ secrets.PORTER_TOKEN }}
```

Configuration Options
---

The possible inputs are:

- `command`: (string, required): The subcommand to run for the Porter CLI. Run `porter -h` locally with the latest CLI to see the full list of options. 