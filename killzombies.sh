#!/bin/bash

PID=$(ps -A -ostat,ppid | grep -e '[zZ]'| awk '{ print $2 }')

if [$PID == '']; then
  echo Não foram encontrados processos zumbies!
else
  echo Pid encontrado: $PID
  echo Exterminando zumbis!!!
  kill -HUP $PID
fi
