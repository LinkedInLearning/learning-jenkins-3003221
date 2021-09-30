@echo off
for /L %%i in (1,1,30) do (
  @echo %%i
  @ping localhost -n 2 >NUL
)

