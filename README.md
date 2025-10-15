# MONAI

Medical image processing examples showing how to get started with MONAILabel and MONAI core. The code and scripts are examples from [SINAPSE webinar] <https://www.sinapse.ac.uk/events/sinapse-webinar-oct-2025/>

## 1. Install MONAI
```bash
pip install monai
```

## 2. Install MONAILabel
```bash
pip install monailabel
```

## 3. Check available apps
```bash
monailabel apps
```

## 4. Download an app (example: radiology)
```bash
monailabel apps --download --name radiology --output apps
```

## 5. Check available datasets
```bash
monailabel datasets
```

## 6. Download a dataset (example: Task06_Lung)
```bash
monailabel datasets --download --name Task06_Lung --output datasets
```

## 7. Start the MONAILabel server
```bash
monailabel start_server --app apps/radiology --studies datasets/Task06_Lung/imagesTr --conf models deepedit
```

## 8. Build and run MONAI server in Docker
Run the provided script to build/download the image and start the server:
```bash
./build_start_server.sh
```
see docker hub repo for more monailabel server: [DockerHub] <https://hub.docker.com/r/adamuag/monai-label-server/tags>


