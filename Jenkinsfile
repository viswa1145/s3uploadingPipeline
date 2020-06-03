def awsCredentials = [[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-test']]
properties([pipelineTriggers([githubPush()])])

pipeline {
    agent any
    options {
        parallelsAlwaysFailFast()
        timestamps()
        withCredentials(awsCredentials)
    }
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
 //               withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: '', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
    // some block
 //               }
                sh '''
                export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
                export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
                export AWS_DEFAULT_REGION=us-east-1
                aws s3 ls
                '''
                echo "$AWS_ACCESS_KEY_ID"
                echo "Lmabda function running "
                echo "nothing is running"
                echo "change something"
                echo "nothing has been chagned"
                
           }
        }
    }
}
