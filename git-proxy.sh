#!/bin/bash

# 脚本用途：切换 Git 代理（http://127.0.0.1:7890）

show_status() {
  echo "Current Git proxy settings:"
  git config --global --get http.proxy
  git config --global --get https.proxy
}

set_proxy() {
  git config --global http.proxy http://127.0.0.1:7890
  git config --global https.proxy http://127.0.0.1:7890
  echo "✅ Git proxy set to http://127.0.0.1:7890"
  show_status
}

unset_proxy() {
  git config --global --unset http.proxy
  git config --global --unset https.proxy
  echo "🧹 Git proxy cleared"
  show_status
}

# 主控制逻辑
case "$1" in
  on)
    set_proxy
    ;;
  off)
    unset_proxy
    ;;
  status)
    show_status
    ;;
  *)
    echo "用法: $0 {on|off|status}"
    ;;
esac

# ./git-proxy.sh on       # 开启代理
# ./git-proxy.sh off      # 关闭代理
# ./git-proxy.sh status   # 查看代理状态
