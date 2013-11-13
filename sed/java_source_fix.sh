#!/bin/bash
# do a common replacement in bunch of java source files
find . -name '*.java' | xargs sed -i '/execute/{:loop;/throws Exception/!{N;b loop};s/)[\t\ ]*\r\?\n[\t\ ]*/) /g;s/Exception/Throwable/g}';
find . -name '*.java' | xargs chmod u+w;

# auto-generate some java Map related code
find . -name "*.java" | sed -n 's/\.\/[[:alnum:]]\+\/F\([[:alnum:]_@]\+\)\.java/map\.put(\"\1\", F\1\.class)\;/g;p'

# auto-generate java imports
$ find . -name "*.java" | sed -n 's/\.\/\([[:alnum:]]\+\)\/F\([[:alnum:]_@]\+\)\.java/import function\.\1\.F\2\;/g;p'
