# prepare update
conda config --add channels conda-forge 
# https://github.com/conda/conda/issues/9367 
# conda config --set channel_priority false 

# update
conda update conda -y
conda update anaconda -y 
conda update --all -y 

# widgets
conda install ipywidgets -y 
jupyter nbextension enable --py widgetsnbextension 

# libraries
conda install catboost xgboost lightgbm -y 
conda install tensorflow-gpu -y 
conda install scikit-learn-intelex -y

# extensions
conda install watermark -y
conda install nb_conda -y
conda install nb_black -y
conda install jupyterlab-git -y
conda install jupyterlab_execute_time -y
# gpu monitor
conda install jupyterlab-nvdashboard -y
conda install jupyterlab-variableinspector -y
# matplotlib widget
conda install ipympl -y

# add environment for debugging
conda create -n jupyterlab-debugger jupyterlab=3 xeus-python

# not a conda extensions
pip install aquirdturtle_collapsible_headings
pip install jupyterlab-system-monitor