#!/bin/bash

if [ "$#" == "0" ]; then
  echo -e '\033[31mAt least one task argument must be provided!\033[0m'
  exit 1
fi

EXIT_CODE=0

while (( "$#" )); do
  TASK=$1
  case $TASK in
  analyze) echo
    echo -e '\033[1mTASK: Analyze\033[22m'
    echo -e 'pushd database/swlegion'
    echo -e 'pub upgrade'
    echo -e 'dartanalyzer --fatal-infos --fatal-warnings .'
    pushd database/swlegion
    pub upgrade || exit $?
    dartanalyzer --fatal-infos --fatal-warnings . || EXIT_CODE=$?
    popd
    echo -e 'flutter packages upgrade'
    echo -e 'flutter analyze --no-pub .'
    flutter packages upgrade
    flutter analyze --no-pub . || EXIT_CODE=$?
    ;;
  format) echo
    echo -e '\033[1mTASK: Format\033[22m'
    echo -e 'dartfmt -n --set-exit-if-changed .'
    dartfmt -n --set-exit-if-changed . || EXIT_CODE=$?
    ;;
  esac

  shift
done

exit $EXIT_CODE
