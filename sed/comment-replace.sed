#! /bin/sed -nf
# filename : comment-replace.sed
# author : Yerik Ng
# date : <2013-10-22 20:21:09>
# desc : In this script, I've used a general idea to locate the target line
# in a plain text where the substitution is done.  The idea is that, in order
# to locate *point-of-interest* in plain text, we shall come across a stage by
# stage process.  For example, if we try to locate something in a comment in
# a source file.  The first stage would be identifying the comment, and then
# the second stage would be locating the target place in *the* comment.  Of
# cource, the comment could be replaced with any construct in the text.  Here
# I demostrate the use of sed to replace some string in the comment of C like
# source files.
/\/\*/ {
    :loop
    /\*\// !{
        N
        b loop
    }
    s/COPYING/!!!!!!!/
}
p
