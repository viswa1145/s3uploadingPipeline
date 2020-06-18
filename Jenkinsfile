//def awsCredentials = [[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-test']]

pipeline {
    agent any
    parameters {
        choice(choices: ['Yes', 'No'], description: 'are we creating new Lambda function', name: 'Lambda_creation')
    }
    options {
        parallelsAlwaysFailFast()
        timestamps()
        //withCredentials(awsCredentials)
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
                script {
                    if (params.Lambda_creation =='yes')
                        {
                            echo "Creating new Lambda function"
                        }
                    else
                        {
                            echo "Updating Lambda function"
                        }
                }
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
 //               sh '''
   //             export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
     //           export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
       //         export AWS_DEFAULT_REGION=us-east-1
         //       aws s3 ls
           //     '''
             //   echo "$AWS_ACCESS_KEY_ID"
                echo "Lmabda function running "
                echo "nothing is running"
                echo "change something"
                
           }
        }
    }
}
