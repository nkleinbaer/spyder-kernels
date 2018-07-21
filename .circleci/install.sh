#!/bin/bash

export TRAVIS_OS_NAME="linux"
export CONDA_DEPENDENCIES_FLAGS="--quiet"
export CONDA_DEPENDENCIES="ipykernel cloudpickle pytest"

echo -e "PYTHON = $PYTHON_VERSION \n============"
git clone git://github.com/astropy/ci-helpers.git > /dev/null
source ci-helpers/travis/setup_conda_$TRAVIS_OS_NAME.sh
