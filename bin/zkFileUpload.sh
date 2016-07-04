#!/bin/sh
 
print_usage () {
    echo "Usage: $0 {server:port} set {path} {fileName}"
    echo "  Upload {data} from {fileName} and write into {path}"   
}
if [ "$#" -ne 4 ]; then
    print_usage 
elif [ "$2" = "set" ]; then
    fileContent=$(cat $4)
    `dirname $0`/zkCli.sh -server $1 $2 $3 "$fileContent"
else
    print_usage
fi
