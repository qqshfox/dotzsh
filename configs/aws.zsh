[[ -f /usr/local/share/zsh/site-functions/_aws ]] && . /usr/local/share/zsh/site-functions/_aws

aws_ssh() {
  ssh -i ~/.ssh/id_awscn $*
}
aws_scp() {
  scp -i ~/.ssh/id_awscn $*
}
aws_jump_ssh() {
  ssh -o ProxyCommand="ssh -W %h:%p aws-office-jump" $*
}
aws_jump_scp() {
  scp -o ProxyCommand="ssh -W %h:%p aws-office-jump" $*
}

alias aws-ssh=aws_ssh
alias aws-scp=aws_scp
alias aws-jump-ssh=aws_jump_ssh
alias aws-jump-scp=aws_jump_scp
