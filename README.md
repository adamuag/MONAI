# MONAI
Medical image processing repository. It shows sample code on how to get started with monailabel and monai core.

### 1. install MONAI
```bash
$ pip install monai
```markdown
### 2. install MONAILabel
```bash 
$ pip install monai label
```markdown
### 3. check available apps
```bash 
$ monailabel apps
```markdown
### 4. Download app
```bash
$ monailabel apps --download --name radiology --output apps
```markdown
### 5. check available studies
```bash
$ monailabel datasets
```markdown
### 6. Download dataset
```bash
$ monailabel datasets --download --name Task06_Lung --output datasets
```markdown
### 7. Start the monailabel server
```bash
$ monailabel start_server --app apps/radiology --studies datasets/Task06_Lung/imagesTr --conf models deepedit
```markdown
### 8. Build and run monai server in docker
check the  dockerhub repo for other versions of monai server.
```bash
$ ./build_start_server.sh
```markdown



