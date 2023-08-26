pipeline {
    agent any
    
    tools{
        terraform 'terraform'
    }

    stages {
        
        stage('Git Checkout') {
            steps {
               checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/lwersiy/Werso-terraform-modules.git']])
            }
        }
        
        stage('Terraform Init') {
            steps {
                dir('root-modules') {
                    sh 'terraform init'
                    }
            }
        }
        
        stage('Terraform plan') {
            steps {
                dir('root-modules') {
                    sh 'terraform plan -var-file=environments/dev.tfvars'
                    }
            }
        }
        
        stage('Terraform apply') {
            steps {
                dir('root-modules') {
                    sh 'terraform apply -var-file=environments/dev.tfvars --auto-approve'
                    }
            }
        }
        
        // stage('Terraform destroy') {
        //     steps {
        //         dir('root-modules') {
        //             sh 'terraform destroy -var-file=environments/dev.tfvars --auto-approve'
        //             }
        //     }
        // }
    }
}
