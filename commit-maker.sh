
_COMMITS="$1"
_DUMP_FILE_NAME="dump-file.txt"
if [ -z "$_COMMITS" ] 
then
	echo "Please set \$_COMMITS"
 
else
    echo "Generating dump file: $_DUMP_FILE_NAME ..."
    touch dump-file.txt 
	
    echo "Creating $_COMMITS commits..."

    for (( i=0; i<$_COMMITS; i++ ))
    do  
        echo "commit $i" > $_DUMP_FILE_NAME
        git add .
        git commit -m "adding line $i to file $_DUMP_FILE_NAME"
    done
fi


