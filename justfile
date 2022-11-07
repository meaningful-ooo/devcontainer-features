set shell := ["fish", "-c"]


test feature image:
  devcontainer features test \
    --skip-scenarios \
    --features {{feature}} \
    --base-image {{image}} .
