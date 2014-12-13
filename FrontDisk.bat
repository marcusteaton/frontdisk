@echo off

REM Set title for program window
title FrontDisk - http://marcus.crisisresponseunit.com/

REM Send user back to here if choice was invalid
:menu
cls

REM Blank out "choice" variable
set choice=

REM Prompt user for selection
set /p choice=Enter the letter of the drive you wish to check (do not type the colon):

REM List of valid choices
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='A' goto Scan
if '%choice%'=='a' goto Scan
if '%choice%'=='B' goto Scan
if '%choice%'=='b' goto Scan
if '%choice%'=='C' goto Scan
if '%choice%'=='c' goto Scan
if '%choice%'=='D' goto Scan
if '%choice%'=='d' goto Scan
if '%choice%'=='E' goto Scan
if '%choice%'=='e' goto Scan
if '%choice%'=='F' goto Scan
if '%choice%'=='f' goto Scan
if '%choice%'=='G' goto Scan
if '%choice%'=='g' goto Scan
if '%choice%'=='H' goto Scan
if '%choice%'=='h' goto Scan
if '%choice%'=='I' goto Scan
if '%choice%'=='i' goto Scan
if '%choice%'=='J' goto Scan
if '%choice%'=='j' goto Scan
if '%choice%'=='K' goto Scan
if '%choice%'=='k' goto Scan
if '%choice%'=='L' goto Scan
if '%choice%'=='l' goto Scan
if '%choice%'=='M' goto Scan
if '%choice%'=='m' goto Scan
if '%choice%'=='N' goto Scan
if '%choice%'=='n' goto Scan
if '%choice%'=='O' goto Scan
if '%choice%'=='o' goto Scan
if '%choice%'=='P' goto Scan
if '%choice%'=='p' goto Scan
if '%choice%'=='Q' goto Scan
if '%choice%'=='q' goto Scan
if '%choice%'=='R' goto Scan
if '%choice%'=='r' goto Scan
if '%choice%'=='S' goto Scan
if '%choice%'=='s' goto Scan
if '%choice%'=='T' goto Scan
if '%choice%'=='t' goto Scan
if '%choice%'=='U' goto Scan
if '%choice%'=='u' goto Scan
if '%choice%'=='V' goto Scan
if '%choice%'=='v' goto Scan
if '%choice%'=='W' goto Scan
if '%choice%'=='w' goto Scan
if '%choice%'=='X' goto Scan
if '%choice%'=='x' goto Scan
if '%choice%'=='Y' goto Scan
if '%choice%'=='y' goto Scan
if '%choice%'=='Z' goto Scan
if '%choice%'=='z' goto Scan

REM If choice was not vaild, display this message
echo.
echo "%choice%" is not a valid choice. Press a key to go back.
pause > NUL

REM Send them back to the prompt
goto Menu

REM If choice was vaild, start the disk scan
:Scan
cls
chkdsk %choice%: /f /r /x

REM Wait for user input so they can see results
echo Press a key to quit.
pause > NUL
exit