#!/bin/bash

mkdir -p root
mkdir -p root/bin
cp $(which cat) root/bin
cp $(which ls) root/bin
mkdir -p root/dev
ln -s /dev/null root/dev/null
ln -s /dev/tty0 root/dev/tty0
mkdir -p root/home/{cs1521,jas}
touch root/home/cs1521/18s1.work
mkdir -p root/home/cs1521/web
mkdir -p root/home/jas/{admin,cs1521,work}
mkdir -p root/usr/{bin,include}
touch root/usr/include/set.h
