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
                aws s3 cp $WORKSPACE/webapp/target/*.?ar s3://testing.com/building/
                '''
            }
        }
        stage("S3  upload") {
             when {
                 stage 'Maven Build'  == SUCCESS
            steps {
                sh '''
                echo "aws s3 cp" $WORKSPACE/webapp/target/*.?ar "s3://testing.com/building/"
                '''
             }
           }
        }
    }
}
