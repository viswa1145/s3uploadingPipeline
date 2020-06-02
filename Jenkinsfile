def awsCredentials = [[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-personal']]


pipeline {
    agent any


    stages {
        stage("Maven Build") {
            
            steps {
                sh '''
                cd $WORKSPACE
                pwd
                echo "/opt/maven/apache-maven-3.6.3/bin/mvn clean install"
                '''
            }
        }
        stage("Code Testing") {
            steps {
                echo "Here we are running code test"
            }
        }
        stage("S3  upload") {
            when {
                beforeAgent true
                branch 'master'
            }
            steps {
                sh '''
                echo "aws s3 cp" $WORKSPACE/webapp/target/*.?ar "s3://testing.com/building/"
                '''
           }
        }
        stage("Lmabda Function") {
            steps {
                echo "withCredentials(awsCredentials)"
                echo "${env.aws_accesskey}"
                echo "Lmabda function running "
                
           }
        }
    }
}
