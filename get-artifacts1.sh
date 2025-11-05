curl -L \
 -H "Accept: application/vnd.github+json" \
 -H "Authorization: Bearer $(cat token.gh)" \
 -H "X-GitHub-Api-Version: 2022-11-28" \
 https://api.github.com/repos/AntoineLetour/graphes/actions/artifacts > gh-artifacts.json

curl -L \
 -H "Accept: application/vnd.github+json" \
 -H "Authorization: Bearer $(cat token.gh)" \
 -H "X-GitHub-Api-Version: 2022-11-28" \
 https://api.github.com/repos/AntoineLetour/graphes/actions/artifacts/4472154619/zip --output artifact.zip

unzip artifact.zip
