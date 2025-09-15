#!/bin/env bash
# https://www.safedog.cn/server_safedog.html

# 禁用代理
unset http_proxy && unset https_proxy && unset all_proxy
unset HTTP_PROXY && unset HTTPS_PROXY && unset ALL_PROXY

DOWNLOAD_DIR=$HOME/Other/safedog_linux64
if [ -d "${DOWNLOAD_DIR}" ]; then
  echo -e "\033[0;32m${DOWNLOAD_DIR} existed.\033[0m"
else
  mkdir -p "${DOWNLOAD_DIR}" && echo -e "\033[0;32m${DOWNLOAD_DIR} created.\033[0m"
fi

option="${1}"
case "${option}" in
  update)
    # 更新日期
    update_date=$(date "+%Y%m%d")
    update_dir="safedog_linux64_${update_date}"
    update_file="safedog_linux64_${update_date}.tar.gz"
    cd $DOWNLOAD_DIR
    ls -lh
    # 下载最新版
    # -t 0：无限重试
    # -c：断点续传
    wget -t 0 https://www.safedog.cn/safedog_linux64.tar.gz -O "${DOWNLOAD_DIR}/${update_file}" && echo -e "\033[0;32mwget safedog_linux64.tar.gz ok\033[0m" || (echo -e "\033[0;31mwget safedog_linux64.tar.gz failed\033[0m" && exit 1)
    ls -lh "${update_file}"
    # 每次更新解压到一个新目录
    if [ ! -d "${update_dir}" ]; then
       mkdir -p "${update_dir}"
    fi
    tar -xzvf "${update_file}" -C "${update_dir}"
    # 查看最新版本目录内容
    cd "${update_dir}"
    ls -lh
    install_file_dir=`ls --format=single-column`
    echo "install_file_dir: ${install_file_dir}"
    cd "${install_file_dir}"
    chmod +x *.py
    # 先卸载
    sudo ./uninstall.py
    # 后安装
    sudo ./install.py
    ;;
  status) sudo service safedog status && exit 0 ;;
  start) sudo service safedog start && exit 0 ;;
  stop) sudo service safedog stop && exit 0 ;;
  restart) sudo sdstart && exit 0 ;;
  login) [ $# -ge 2 ] && sudo sdcloud -u "$2" || echo "bash Safedog.sh login [your_account]"  ;;
  cui) export TERM=xterm-basic; sudo sdui ;;
  *) echo "command: bash Safedog.sh {status|start|stop|restart|login|cui|update}" ;;
esac
