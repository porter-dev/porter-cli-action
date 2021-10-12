# porter-cli-action

This Github action runs a CLI command using the Porter CLI. 

## Usage

```yaml
steps:
  - name: Run a Porter CLI command
    uses: porter-dev/porter-cli-action@v0.1.0
    with:
      command: version
    env:
      PORTER_HOST: https://dashboard.getporter.dev
      PORTER_CLUSTER: 1234
      PORTER_PROJECT: 4321
      PORTER_TOKEN: ${{ secrets.PORTER_TOKEN }}
```

## Configuration Options

The possible inputs are:

- `command`: (string, required): The subcommand to run for the Porter CLI. Run `porter -h` locally with the latest CLI to see the full list of options. 

## Example 

To run a Porter CLI command that builds from a Dockerfile with the path `./docker/Dockerfile`, you could run the following:

```yaml
steps:
  - name: Checkout code
    uses: actions/checkout@v2.3.4
  - name: Set Github tag
    id: vars
    run: echo "::set-output name=sha_short::$(git rev-parse --short HEAD)"
  - name: Update a Porter application
    timeout-minutes: 20
    uses: porter-dev/porter-cli-action@v0.1.0
    with:
      command: update --app my-app --tag ${{ steps.vars.outputs.sha_short }} --dockerfile ./docker/Dockerfile --stream
    env:
      PORTER_HOST: https://dashboard.getporter.dev
      PORTER_CLUSTER: 1234
      PORTER_PROJECT: 4321
      PORTER_TOKEN: ${{ secrets.PORTER_TOKEN }}
```