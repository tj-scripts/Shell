#!/bin/env bash
# https://www.clamav.net/downloads
# https://docs.clamav.net/manual/Installing.html#linux-deb-rpm
# https://docs.clamav.net/manual/Installing.html#macos

MY_OS="$(uname)"

# MacOS 环境变量移到用户环境变量文件中
# if [ "${MY_OS}" == "Darwin" ]; then
  # export PATH=/usr/local/clamav/bin:/usr/local/clamav/sbin:$PATH
  # echo -e "Darwin: \n${PATH}\n"
# fi

DATA_DIR=$HOME/Backup/ClamAV_Data
SCAN_LOGFILE=$DATA_DIR/clamscan.log
[ -d "${DATA_DIR}" ] ||  mkdir -p "${DATA_DIR}"

option="${1}"
case "${option}" in
  update)
    if [ "${MY_OS}" == "Darwin" ]; then 
      sudo freshclam
    else
      sudo systemctl stop clamav-freshclam
      sudo freshclam
      sudo systemctl enable clamav-freshclam --now
      ls -lh /var/lib/clamav 
    fi
  ;;
  scan) [[ -d "${2}" ]] && clamscan -r "${2}" -l "${SCAN_LOGFILE}" || clamscan "${2}" -l "${SCAN_LOGFILE}" ;;
  config) clamtk ;;
  remove) clamscan "${2}" --remove ;;
  stop) sudo systemctl disable clamav --now ;;
  delete) sudo apt remove clamav* ;;
  logs) 
    log_files=`ls -lth "${DATA_DIR}"/*.log | awk -v OFS="	" '{print $5,$6,$7,$8,$9}'`
    echo -e "\n日志文件列表如下:\n${log_files}\n"
    array_file=(`echo "${log_files}" | awk '{print $5}'`)
    # 取最近9条
    array_file=("${array_file[@]:0:9}")
    choice="c"
    while [ "${choice}" != "0" ]; do
      echo -e "\n请选择要查看的日志文件（查看最后30行内容）"
      for ((i=0; i<${#array_file[@]}; i++)); do
        echo "$((i+1)). ${array_file[i]}"
      done
      echo -n " "
      read -p "输入选项数字：(输入0则退出) " -n 1 index
      choice="${index}"
      if [[ $choice =~ ^[1-9]$ ]] && [[ $((choice-1)) < ${#array_file[@]} ]]; then 
        tail -30 "${array_file[$((choice-1))]}"
	echo -e "\n-------------------------------------------------------------------------------\n"
      elif [ "${choice}" == "0" ]; then
	echo -e "\nbye.\n"
      else
        echo -e "\n未知的选项：${choice}\n"
      fi
    done
  ;; 
  help) clamscan -h ;;
  *) echo "command: bash ClamAV.sh {update|scan|config|remove|stop|delete|logs|help}" ;;
esac
