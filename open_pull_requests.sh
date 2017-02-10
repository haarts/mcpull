#!/bin/bash -e

repos=$(curl -s -H "Authorization: token $GH_TOKEN" https://api.github.com/orgs/Bottom-Line-Software/repos | jq --raw-output .[].pulls_url)

while read -r repo
do
  trimmed=$(echo $repo | sed 's/{\/number}//')
  result=$(curl -s -H "Authorization: token $GH_TOKEN" $trimmed | jq ".[] | {title, html_url, created_at}")
  if [ -n "$result" ]; then
    echo $trimmed | sed 's/https:\/\/api.github.com\/repos\/Bottom-Line-Software//' | sed 's/pulls//'
    echo $result | jq .
  fi
done <<< "$repos"
