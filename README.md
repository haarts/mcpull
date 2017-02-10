Show the open pull requests of your organisation

## Dependencies

- [Bash](https://www.gnu.org/software/bash/)
- [jq](https://stedolan.github.io/jq/)

You also need a Github personal access token. Log in to Github and go to
https://github.com/settings/tokens. Grant it all 'repo' and 'admin:org:read'
rights. Keep it secret.

## Install

```
$ git clone git@github.com:haarts/mcpull.git
```

## Run

```
$ export GH_TOKEN=<your-github-token>
$ ./open_pull_requests.sh
```
