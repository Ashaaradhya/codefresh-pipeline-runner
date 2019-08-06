FROM codefresh/cli

LABEL "com.github.actions.name"="test-pipeline-runner"
LABEL "com.github.actions.description"="allow run custom codefresh pipeline"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/codefresh-io/codefresh-github-action-test"
LABEL "homepage"="https://github.com/codefresh-io/codefresh-github-action-test"
LABEL "maintainer"="<denys@codefresh.io>"

#ARG PIPELINE_NAME
#ARG CF_API_KEY
#ARG TRIGGER_NAME
#ARG COMMIT_SHA
#ARG BRANCH

ADD runner-entrypoint.sh /runner-entrypoint.sh

ENTRYPOINT ["/runner-entrypoint.sh"]