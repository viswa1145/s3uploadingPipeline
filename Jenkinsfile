pipeline {
    agent any
    stages {
        stage('Clone sources') {
            steps {
                git url: 'https://github.com/viswa1145/hello-world.git'
            }
        }
        stage('Execute Maven') {
            steps {
                sh '''
                cd ${workspace}
                pwd
                /opt/maven/apache-maven-3.6.3/bin/mvn  clean install
                '''
            }
        }

    }
}
