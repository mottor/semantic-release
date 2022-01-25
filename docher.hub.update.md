# How to update Docker Hub's version

    docker build -t mottor1/semantic-release .
    docker login ## Enter login and pass
    docker tag mottor1/semantic-release mottor1/semantic-release:1.0 ## change version here
    docker tag mottor1/semantic-release mottor1/semantic-release:latest
    docker push mottor1/semantic-release
