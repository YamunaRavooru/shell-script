#!/bin/bash

echo "All variables:: $@"
echo "Number of variables:: $#"
echo "Script Name:: $0"
echo "Present working directory::$PWD"
echo "Home  Directory of current user::$HOME"
echo "Which user running the script::$USER"
echo "Process id of current script::$$"
sleep=100 &
echo "process id of last command in background::$!"