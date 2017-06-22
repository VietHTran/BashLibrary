#!/bin/bash
#Init simple C file for testing

if [[ -z "$1" ]]; then
    echo "Please provide filename as argument in order to perform test"
    exit
fi
FILE_NAME="$1"
TAB="   "
function println {
    echo "$1" >> "$FILE_NAME"
}
if [[ -f $FILE_NAME ]]; then
    echo "File $FILE_NAME already exists."
    read -p "Do you want to proceed, sir? [Y/N]" option
    declare -l isProceed=$option
    if [[ $isProceed == "n" || $isProceed == "no" || $isProceed == "nein" ]]; then
	    exit
    fi
fi
println "#include <stdlib.h>" 
println "#include <unistd.h>"
println "#include <stdio.h>" 
println "#include <stdbool.h>" 
println "#include <assert.h>" 
println "#include <sys/types.h>" 
println "#include <sys/wait.h>" 
println "#include <sys/sem.h>" 
println "#include <sys/mman.h>" 
println "#include <string.h>" 
println "#include <limits.h>" 
println ""
println "void checkerr(bool criteria, char* errmess) {"
println "$TAB if (criteria && errmess!=NULL) {"
println "$TAB $TAB perror(errmess);"
println "$TAB $TAB exit(1);"
println "$TAB }"
println "}"
println ""
println "int main( int argc, char **argv) {" 
println ""
println "    return 0;"
println "}"
echo "Create test file $FILE_NAME complete"
