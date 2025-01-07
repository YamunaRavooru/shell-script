#!/bin/bash
read new-text
sed -i 's/hello/$new-text/g' 02-variable.sh

