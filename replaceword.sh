#!/bin/bash
read -d new
sed -i 's/hello/$new/g' 02-variable.sh

