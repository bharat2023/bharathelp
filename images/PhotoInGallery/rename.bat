@echo off

setlocal enabledelayedexpansion
set count=1

for %%F in (*) do (
  if %%~xF neq %~x0 (
    set "extension=%%~xF"
    ren "%%F" "photo!count!!extension!"
    set /a count+=1
  )
)
