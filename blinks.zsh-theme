# https://github.com/blinks zsh theme

function _prompt_char() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo "%{%F{blue}%}✎%{%f%k%b%}"
  else
    echo ' '
  fi
}

ZSH_THEME_GIT_PROMPT_PREFIX=" (%{%B%F{21}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%b%f%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{red}%}*%{%f%F{white}%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{%f%}
%{%F{white}%}%n%{%f%F{yellow}%} %~%{%f%F{white}%}$(git_prompt_info)%E%{%F%B%}
%{%b%F{white}%}$(_prompt_char) ♯%{%b%F{11}%} '

RPROMPT='%{%B%F{white}%}%*%{%f%b%}'
