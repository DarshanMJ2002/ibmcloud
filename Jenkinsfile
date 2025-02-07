pipeline {
    agent any

    tools{
        maven 'maven'
    }

    stages{
        stage('Check and remove container'){
            steps{
                script{
                    def containerExists = sh(script: "docker ps -q -f name=darshan", returnStdout: true).trim()
                    if (containerExists) {
                    sh "docker stop darshan"
                    sh "docker rm darshan"
                    }
                }
            }
        }
        stage('Build package'){
            steps{
                sh 'mvn clean package'
            }
        }
        stage('Create image'){
            steps{
                sh 'sudo docker build -t app /var/lib/jenkins/workspace/webapp/'
            }
        }
        stage('Assign tag'){
            steps{
                sh 'docker tag app darshan180/web'
            }
        }
        stage('Push to dockerhub'){
            steps{
                sh 'echo "darsh@123" | docker login -u "darshan180" --password-stdin'
                sh 'docker push darshan180/web'
            }
        }
        stage('Remove images'){
            steps{
                sh 'docker rmi -f $(docker images -q)'
            }
        }
        stage('Pull image from DockerHub'){
            steps{
                sh 'docker pull darshan180/web'
            }
        }
        stage('Run a container'){
            steps{
                sh 'docker run -it -d --name darshan -p 8081:8080 darshan180/web'
            }
        }
    }
    post {
        success {
            echo 'Deployment successful'
        }
        failure {
            sh 'docker rm -f darshan'
        }
        always{
            echo 'Deployed'
        }
    }

}