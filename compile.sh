#!/bin/sh

cd $(dirname $0)

for i in `ls locale/*.po`;do
	echo "Compiling `echo $i|sed "s|locale/||"`"
	msgfmt $i -o `echo $i |sed "s/lilosetup-//"|sed "s/.po//"`.mo
done
