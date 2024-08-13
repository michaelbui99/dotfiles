alias ll="ls -alFh"
alias k="kubectl"
alias kaf="kubectl apply -f"
alias vim="nvim"
alias zj="zellij"
alias lg="lazygit"
alias ansible='docker run --rm -it -v $(pwd):/ansible/playbooks -v ~/.ssh:/root/.ssh --entrypoint=ansible ansible'
alias ansible-playbook='docker run --rm -it -v $(pwd):/ansible/playbooks -v ~/.ssh:/root/.ssh  ansible'
