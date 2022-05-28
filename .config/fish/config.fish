set -x GITHUB_USERNAME 'stephanzahariev'
set -x GITHUB_TOKEN 'xxx'

set -x KUBECONFIG "$HOME/.kube/eks-kubeconfig"

set -x PATH "$PATH:/usr/local/go/bin"

set fish_git_dirty_color red
set fish_git_not_dirty_color green

eval (ssh-agent -c)

function custom_prompt
    set_color normal
    set -l git_branch (git branch 2>/dev/null | sed -n '/\* /s///p')
    set -l kube_context (kubectl config current-context | cut -d. -f1)
    set_color 2eb82e
    set_color cyan
    echo -n (prompt_pwd)
    set_color normal
    echo -n ' ['
    set_color 0087ff
    echo -n "$git_branch"
    if [ ! -z "$git_branch" ]
      set_color normal
      echo -n "/"
    end
    set_color 00b386
    echo -n "$kube_context"
    set_color normal
    echo -n ']'
    set_color cyan
    echo -n \n'$ '
end

function fish_prompt
    custom_prompt
end

function src
    cd ~/src
end

source /usr/local/opt/asdf/libexec/asdf.fish
