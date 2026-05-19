@echo off
echo ============================================
echo  Setup - Fake Review Detection Project
echo ============================================
echo.

where conda >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Conda not found. Please install Miniconda first:
    echo         https://docs.conda.io/en/latest/miniconda.html
    pause
    exit /b 1
)

call conda create -n ml-applied python=3.11 -y
call conda activate ml-applied
pip install -r requirements.txt
python -m ipykernel install --user --name=ml-applied --display-name="ML Applied"

echo.
echo Done. Activate with: conda activate ml-applied
pause
