#az login

#az group create --name task-rg --location eastus

#az aks create --resource-group task-rg --name taskaks --node-count 1 --enable-addons monitoring --generate-ssh-keys

az aks nodepool add --resource-group task-rg --cluster-name taskaks --name frontendpool --node-count 1 --labels app=greetings-app
az aks nodepool add --resource-group task-rg --cluster-name taskaks --name backendpool --node-count 1 --labels app=redis-app


#az aks nodepool update --cluster-name taskaks --name frontendpool --resource-group task-rg --labels app=greetings-app
#az aks nodepool update --cluster-name taskaks --name backendpool --resource-group task-rg --labels app=redis-app

#az acr create --resource-group task-rg --name satyataskacr --sku Basic

#docker build -t greetingsapp:v1 .
#docker image ls 
#docker tag greetingsapp:v1 satyataskacr.azurecr.io/greetingsapp:v1
#docker login satyataskacr.azurecr.io
#docker push satyataskacr.azurecr.io/greetingsapp:v1

#az aks get-credentials --resource-group task-rg --name taskaks
#kubectl create secret docker-registry satyataskacr-credentials --docker-server=satyataskacr.azurecr.io --docker-username=satyataskacr --docker-password=NrRwlZPaYJSvfH65q24f/QcAK/Sf6uSUH1COVcVEXu+ACRCnhaeW





#echo -n 'satyataskacr:1sL4aU7c/SiZvU19N6gpkaGy0HE95ido//aNASiVrz+ACRDMRu4n' | base64

#$creds = [System.Text.Encoding]::UTF8.GetBytes('satyataskacr:1sL4aU7c/SiZvU19N6gpkaGy0HE95ido//aNASiVrz+ACRDMRu4n')
#$encodedCreds = [System.Convert]::ToBase64String($creds)
#Write-Output $encodedCreds




