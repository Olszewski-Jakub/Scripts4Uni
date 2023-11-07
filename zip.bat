@echo off
PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%~dp0\zip_anything.ps1' -FileName '%~1'"
