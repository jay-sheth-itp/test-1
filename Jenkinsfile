pipeline{
    agent any
    stages{
        stage("git ckecout"){
            steps{
                // git branch: 'main', credentialsId: 'jay-sheth-itp', url: 'https://github.com/jay-sheth-itp/test-1.git'
                echo "git checkout"
            }
        }
        stage("Deploy to s3"){
            steps{
                sh "aws configure set region $AWS_REGION"
                sh "aws configure --access-key $AWS_ACCESS_KEY_ID"
                sh "aws configure --secret-key $AWS_SECRET_ACCESS_KEY"
                sh "aws configure --session-token $AWS_SESSION_TOKEN"
                sh "aws s3 rm s3://jay.com/index.html"
                sh "aws s3 cp index.html s3://jay.com"
            }
        }
    }
}
