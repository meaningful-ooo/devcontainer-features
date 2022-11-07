test feature image:
  devcontainer features test \
    --skip-scenarios \
    --features {{feature}} \
    --base-image {{image}} .

test-with-scenarios feature image:
  devcontainer features test \
    --features {{feature}} \
    --base-image {{image}} .
