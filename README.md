dream3d (Docker image)
======================

[DREAM.3D](http://dream3d.bluequartz.net/) [Docker](http://www.docker.com/) image for [HTCondor](http://research.cs.wisc.edu/htcondor/).

Build
-----

```
docker build -t dream3d:latest -t dream3d:6.4.197 -f Dockerfile .
```

Usage
-----

### condor.job

```
# HTCondor Job Description File

DESCRIPTION            = DREAM.3D PipelineRunner

UNIVERSE               = DOCKER
DOCKER_IMAGE           = dream3d:6.4.197

EXECUTABLE             = PipelineRunnerWrapper.sh
TRANSFER_EXECUTABLE    = TRUE

ARGUMENTS              = "-p Pipelines/Workshop/Synthetic/(04)_Two_Phase_Cubic_Hexagonal_Particles_Equiaxed.json"

TRANSFER_INPUT_FILES   = Data, Pipelines
TRANSFER_OUTPUT_FILES  = Data/Output

QUEUE
```

### PipelineRunnerWrapper.sh

```
#!/bin/bash
# Wrapper for DREAM.3D PipelineRunner

# Load environment
source /env.sh

PipelineRunner "$@"
```
