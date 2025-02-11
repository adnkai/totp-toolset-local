# Token2 TOTP Toolset - local
Fully client-side version of Token2 TOTP Toolset (Token2 TOTP Toolset - local), which can be run locally without accessing any libraries/resources on the Internet (including the QR image generation).

### Features
* convert hex seed to base32 format
* generate QR image based on hex or base32 seed key values
* generate random seed values (i.e. for Token2 programmable tokens)
* verify the time drift with customizable skew value
* create CSV for Azure MFA import



## Demo
https://www.token2.com/site/page/totp-toolset

Note! This demo is slightly different (i.e. the design is not the same and it does not use jQuery-qrcode library - QR is generated using Google Charts), but functionality is exactly the same


## Following libraries were used

jQuery v3.3.1 | (c) JS Foundation and other contributors | jquery.org/license 

jQuery-qrcode v0.14.0 - https://larsjung.de/jquery-qrcode/ 

jsSHA (c) Brian Turek 2008-2017 http://caligatio.github.com/jsSHA/

## Docker Infos
Clone Git Repo

Create Dockerfile

    FROM nginx
    
    COPY . /usr/share/nginx/html

docker build -t imagename .

docker run --name containername -p 80:80 imagename

## Azure

Container Registry anzeigen
    az account show // ggf. Account wechseln
    az acr list -o table
    az acr login -n registryname

Docker image taggen (container registry)
    docker tag local_imagename mycontainerregistry.azurecr.io/newimagename:tag

Docker image hochladen (docker push)
    docker push mycontainerregistry.azurecr.io/newimagename:tag

Registry Admin User aktivieren
    Access Keys

Container instanz starten
    Rechtsklick auf Repository/Versionsnummer