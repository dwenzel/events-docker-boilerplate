#!/usr/bin/env bash

set -o pipefail  # trace ERR through pipes
set -o errtrace  # trace ERR through 'time command' and other functions
set -o nounset   ## set -u : exit the script if you try to use an uninitialised variable
set -o errexit   ## set -e : exit the script if any statement returns a non-true return value

source "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.config.sh"

if [ "$#" -lt 1 ]; then
    echo "No project type defined (either typo3, neos or git)"
    exit 1
fi


rm -rf -- "$CODE_DIR"
mkdir -p "$CODE_DIR"

case "$1" in
    ###################################
    ## TYPO3 CMS
    ###################################
    "typo3")
        execInDir "$CODE_DIR" "composer create-project typo3/cms-base-distribution \"$CODE_DIR\""
        execInDir "$CODE_DIR" "touch web/FIRST_INSTALL"
        ;;

    ###################################
    ## TYPO3 EVENTS SUITE
    ###################################
    "events")
        execInDir "./" "composer install"
        execInDir "$CODE_DIR" "touch web/FIRST_INSTALL"
        ;;

esac

touch -- "$CODE_DIR/.gitkeep"
