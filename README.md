![CircleCI](https://circleci.com/gh/FarhanShoukat/predict-housing-prices-docker-kubernetes.svg?style=svg)

## Project Overview

This project has a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). The Python flask app—in a provided file, `app.py` serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
**Note:** Alternatively, you can also use conda.
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## Project Files
### `app.py`
The main flast app that is used to predict housing prices.

### `model_data/`
This directory contains pretrained model and data used to create the model.

### `output_txt_files/`
This directory contains sample outputs from docker and kubernetes.

### `run_docker.sh`
Builds a docker image and runs it on port 8000 on host machine.

### `make_prediction.sh`
Calls flass-app to make a prediction.

### `upload_docker.sh`
Uploads docker image to docker hub repository. (Update this file to upload it to your own repository.)

### `run_kubernetes.sh`
Deploys an image from docker hub to kubernetes cluster and exposes it on port 8000. (Update this to use some other image.)
