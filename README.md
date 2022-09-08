# .env parser action

read the content of .env files into the GitHub Actions Context

[![license][license-img]][license-url]

## Why

GitHub Actions already contains plenty of [context][] for use within Actions workflows.

However, it's very limited, and does not include the entirety of the repository metadata.

## Usage

``` yaml
jobs:
  job:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2

      - id: metadata
        uses: ahmadnassri/action-dotenv@v1

      - run: echo ${{ env.foo }} ${{ env.bar }}
```

  [context]: https://docs.github.com/en/actions/reference/context-and-expression-syntax-for-github-actions

----
> Author: [Ahmad Nassri](https://www.ahmadnassri.com/) &bull;
> Twitter: [@AhmadNassri](https://twitter.com/AhmadNassri)

[license-url]: LICENSE
[license-img]: https://badgen.net/github/license/ahmadnassri/action-dotenv
