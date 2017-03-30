: The script assumes nothing already installed other than Anaconda 3
: "snakepit" - Installs: tensorflow, keras, scikit-learn, jupyter


conda create -n snakepit python=3.5 --y
call activate snakepit

pip install --upgrade tensorflow
:: use " anaconda search -t conda <package> " to find other versions
pip install scikit-learn
pip install matplotlib
pip install jupyter
conda install --channel https://conda.anaconda.org/conda-forge keras

: Make a windows desktop shortcut
@echo off

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\snakepit.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "python" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%

call deactivate snakepit
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO Set desktop shortcut "snakepit" as python interpreter in your Python IDE
PAUSE
