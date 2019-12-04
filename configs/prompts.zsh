function ruby_version_info() {
  local version;
  if [ "x$RUBY_VERSION" != "x" ]; then
    version="$RUBY_VERSION"
  else
    if command -v ruby >/dev/null 2>&1; then
      version="ruby-$(ruby -e 'puts RUBY_VERSION')"
    fi
  fi

  [ "x$version" != "x" ] && echo "[♦ $version]"
}

function node_version_info() {
  if command -v node >/dev/null 2>&1; then echo "[⬡ node-$(node -v)]"; fi
}

PROMPT='%F{white}%*%f '$PROMPT
RPROMPT='%F{magenta}$(ruby_version_info)$(node_version_info)%f'
