# MONAI
Medical image processing repository. It shows sample code on how to get started with monailabel and monai core.

### 1. install MONAI
```bash
$ pip install monai
### 2. install MONAILabel
```bash 
$ pip install monai label 
### 3. check available apps
```bash 
$ monailabel apps
### 4. Download app
```bash
$ monailabel apps --download --name radiology --output apps 
### 5. check available studies
```bash
$ monailabel datasets
### 6. Download dataset
```bash
$ monailabel datasets --download --name Task06_Lung --output datasets
### 7. Start the monailabel server
```bash
$ monailabel start_server --app apps/radiology --studies datasets/Task06_Lung/imagesTr --conf models deepedit
### 8. Build and run monai server in docker
check the  dockerhub repo for other versions of monai server.
```bash
$ ./build_start_server.sh



