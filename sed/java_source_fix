#!/bin/bash
# do a common replacement in bunch of java source files
find . -name '*.java' | xargs sed -i '/execute/{:loop;/throws Exception/!{N;b loop};s/)[\t\ ]*\r\?\n[\t\ ]*/) /g;s/Exception/Throwable/g}';
find . -name '*.java' | xargs chmod u+w;
