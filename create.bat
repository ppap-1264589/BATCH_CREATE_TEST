@echo off
set /p name="Enter task name: "
set /p numtest="Enter number of test: "
set /P cnt="From: "
set /A numtest+=%cnt%-1

mkdir D:\XuanHoang\TheWorld\BATCH_GENTEST\Create_Test\Task\%name% 2>nul
cd D:\XuanHoang\TheWorld\BATCH_GENTEST\Create_Test\Code(nofreopen)
:: dich chuong trinh
g++ -std=c++14 %name%.cpp -o %name%.exe
g++ -std=c++14 gen.cpp -o gen.exe

:: tao test
:loop
echo Creating test %cnt%
gen.exe > %name%.inp
%name%.exe
mkdir D:\XuanHoang\TheWorld\BATCH_GENTEST\Create_Test\Task\%name%\Test%cnt%\ 2>nul
move D:\XuanHoang\TheWorld\BATCH_GENTEST\Create_Test\Code(nofreopen)\%name%.inp* D:\XuanHoang\TheWorld\BATCH_GENTEST\Create_Test\Task\%name%\Test%cnt%\ > nul
move D:\XuanHoang\TheWorld\BATCH_GENTEST\Create_Test\Code(nofreopen)\%name%.out* D:\XuanHoang\TheWorld\BATCH_GENTEST\Create_Test\Task\%name%\Test%cnt%\ > nul
if %cnt% EQU %numtest% (
	echo "DONE"
) else (
	set /A cnt+=1
	goto loop
)
del gen.exe
del %name%.exe
pause