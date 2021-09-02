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
conda install tensorflow-gpu=2.5 -y 
conda install scikit-learn-intelex -y
conda install cudatoolkit=11.3 -y
conda install kaggle -y
conda install opencv -y

# extensions
conda install watermark -y
conda install nb_conda -y
conda install nb_black -y
conda install jupyterlab-git -y
conda install jupyterlab_execute_time -y
# gpu monitor is really nice, but currently does not support windows
# conda install jupyterlab-nvdashboard -y
# not working properly too
# conda install jupyterlab-variableinspector -y
# matplotlib widget
conda install ipympl -y
conda install jupyter-resource-usage

# add environment for debugging
conda create -n jupyterlab-debugger jupyterlab=3 xeus-python -y

# environment for xgboost on GPU
# conda create -n xgboost_env -c nvidia -c rapidsai py-xgboost cudatoolkit=11.3 ipykernel -y

# not a conda extensions
pip install aquirdturtle_collapsible_headings