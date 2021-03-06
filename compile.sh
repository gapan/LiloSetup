#!/bin/sh

cd $(dirname $0)

for i in `ls po/*.po`;do
	echo "Compiling `echo $i|sed "s|po/||"`"
	msgfmt $i -o `echo $i |sed "s/.po//"`.mo
done
intltool-merge po/ -d -u src/lilosetup.desktop.in src/lilosetup.desktop
intltool-merge po/ -d -u src/lilosetup-kde.desktop.in src/lilosetup-kde.desktop
