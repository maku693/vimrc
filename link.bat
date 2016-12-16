@echo off
cd /d %~dp0
for %%f in (*vimrc) do (
  mklink "%HOMEPATH%\_%%f" "%~dp0%%f"
)

pause
