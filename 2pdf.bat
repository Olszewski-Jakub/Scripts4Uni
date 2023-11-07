@echo off
PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%~dp0\word_to_pdf.ps1' -FileName '%~1'"
