#!/bin/env bash

PROJ_ROOT_DIR="${HOME}/Data/github.com/microsoft"
# 仅过滤教程项目
projects=("ML-For-Beginners" "AI-For-Beginners" "Data-Science-For-Beginners" "All")

project="${2}"
# 不传参数
if [ -z "${project}" ]; then
  project="All"
fi

# #####
call_function() {
    local func_name=$1
    echo -e "Calling ${func_name}, Learning ${project}.\n"
    cd "${PROJ_ROOT_DIR}"
    for _project in "${projects[@]}"
    do
      if [ "${_project}" == "All" ]; then
        echo -e "${_project} learning ok.\n"
      elif [ "${_project}" == "${project}" ] || [ "${project}" == "All" ]; then
	if [ ! -d "${PROJ_ROOT_DIR}/${_project}" ]; then
          git clone "https://github.com/microsoft/${_project}"
	fi
        cd "${_project}"
        ${func_name} 
        echo -e "update ${_project} ok.\n"
        cd "${PROJ_ROOT_DIR}"
      fi      
    done
}

git_pull() {
  git pull
  echo -e "git pull ok."
}

docsify_serve() {
  docsify serve
  echo -e "docsify serve ok."
}
# #####

option="${1}"
case "${option}" in
  update)
    call_function git_pull 
  ;;
  start)
    call_function docsify_serve
  ;;
  *)
    script_name=$(basename "$0")
    echo -e "command: bash ${script_name} {update|start}"
  ;;
esac
