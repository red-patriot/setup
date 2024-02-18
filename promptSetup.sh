# These set the desired behavior of bash-git-prompt
if [ -f "/usr/lib/bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=0   # Enable the prompt everywhere
    GIT_PROMPT_FETCH_REMOTE_STATUS=0
    GIT_PROMPT_IGNORE_SUBMODULES=1
    GIT_PROMPT_THEME=RP
    source "/usr/lib/bash-git-prompt/gitprompt.sh"
fi
