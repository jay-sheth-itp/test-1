pipeline{
    agent any
    stages{
        stage("git ckecout"){
            steps{
                // git branch: 'main', credentialsId: 'jay-sheth-itp', url: 'https://github.com/jay-sheth-itp/test-1.git'
                echo "git checkout"
            }
        }
        stage("Terraform Init"){
            steps{
                sh 'terraform init'
            }
        }
        stage("Terraform Apply"){
            steps{
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
