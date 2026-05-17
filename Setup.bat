@echo off
call conda create -n ml-applied python=3.11 -y
call conda activate ml-applied
pip install -r requirements.txt
python -m ipykernel install --user --name=ml-applied --display-name="ML Applied"
echo Done.
pause
