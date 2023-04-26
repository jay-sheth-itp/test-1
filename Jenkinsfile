pipeline{
    agent any
    stages{
        stage("git checkout"){
            steps{
                // git branch: 'main', credentialsId: 'jay-sheth-itp', url: 'https://github.com/jay-sheth-itp/test-1.git'
                echo "git checkout"
                echo "git init"
                sh 'ls'
            }
        }
        stage("Terraform Validate"){
            steps{
                sh 'terraform validate'
            }
        }
        stage("Terraform Init"){
            steps{
                sh 'terraform init'
            }
        }
        stage("Terraform Apply"){
            steps{
                input(message: 'Click "proceed" to approve the above Terraform Plan')
                sh 'terraform apply -auto-approve'
            }
        }
        
//         stage("Deploy to S3"){
//             steps{
//                 sh "aws s3 rm s3://jay.com/index.html"
//                 sh "aws s3 cp index.html s3://jay.com"
//             }
//         }
    }
}
