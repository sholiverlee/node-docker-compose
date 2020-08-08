pipeline {
    agent { docker { image 'docker' } }

    environment {
            IMAGE_NAME = 'node-docker-compose'
            TAG_NAME = 'latest'
            HUB_PWD = credentials('HUB_PWD')
            HUB_USER = credentials('HUB_USER')
     }

    stages {
        stage('build') {
            steps {
                sh "echo ${HUB_PWD} | docker login --username ${HUB_USER} --password-stdin"
                sh 'docker build -t ${HUB_USER}/${IMAGE_NAME}:${TAG_NAME} .'
                sh 'docker push ${HUB_USER}/${IMAGE_NAME}:${TAG_NAME}'
            }
        }
    }
}
