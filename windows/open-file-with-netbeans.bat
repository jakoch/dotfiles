@echo off 
setlocal enableextensions enabledelayedexpansion 
set NETBEANS=%1
set FILE=%~2
%NETBEANS% --nosplash --console suppress --open "%FILE:~19%"