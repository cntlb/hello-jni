/*
安装swig, 编写好该文件, 命令行下:

swig -java -package com.apress.swig -outdir java/com/apress/swig jni/Unix.i

生成构建的
    com.apress.swig
         |--  Unix
         |--  UnixJNI
    jni
         |--Unix_wrap.c

注:my-swig-generate.mk添加到Android.mk中没有执行成功,体会一下swig而已
*/
%module Unix

%{
#include <unistd.h>
%}

typedef unsigned int uid_t;

/* Ask SWIG to wrap getuid function. */
extern uid_t getuid(void);