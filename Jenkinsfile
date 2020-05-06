pipeline {
    agent any

    stages {
        stage("Maven Build") {
            steps {
                git url: 'https://github.com/viswa1145/hello-world.git'
                sh '''
                cd $WORKSPACE
                pwd
                /opt/maven/apache-maven-3.6.3/bin/mvn clean install
                #echo $WORKSPACE/webapp/target/*.?ar
                find $WORKSPACE/webapp/target/*.?ar -type f -mmin +15 
                '''
            }
        }
    }
}
