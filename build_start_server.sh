 #!/bin/bash

# Build the Docker image
docker build -t adamuag/monai-label-server:v2.0 .

# Run the Docker image and start the monailabel server with deepedit model. -p is optional
docker run --rm -it --gpus all --net=host -p 8500:8000 adamuag/monai-label-server:v2.0 bash  -c "\
    monailabel start_server --app apps/radiology --studies datasets/Task09_Spleen/imagesTr --conf models deepedit"