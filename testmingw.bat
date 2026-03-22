@echo off

set CUR_PATH=%~dp0src/
set LUA_PATH=./?.lua;%CUR_PATH%?.lua;%CUR_PATH%?/init.lua;

luajit "%CUR_PATH%main.lua" %*