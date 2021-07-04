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