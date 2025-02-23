pipeline{
	agent { label 'ecs' }
	tools { 
		terraform 'terraform'
	}
	stages{
		stage('Set parameters') {
            steps {
                script{
                    echo "GIT_BRANCH: ${GIT_BRANCH}" 
                    if ("${GIT_BRANCH}".contains("develop")) {
                        env.ENVIRONMENT="dev"
                    } else if ("${GIT_BRANCH}".contains("master")){
                        env.ENVIRONMENT="prod"
                    }
            }
        }
		}
		stage('Terraform init'){
			steps{
				script{
				 if("${env.ENVIRONMENT}".contains("dev")){
					withAWS(credentials: 'omni-aws-creds'){
					sh "terraform init -backend-config 'bucket=omni-toyota-terraform-state-dev' -backend-config 'region=us-east-1' -backend-config 'key=mcl_state_file/dev/terraform.tfstate' -migrate-state"
				}
				 }
				else if("${env.ENVIRONMENT}".contains("prod")){
					withAWS(credentials: 'omni-aws-creds'){
					sh "terraform init -backend-config 'bucket=omni-toyota-terraform-state-prod' -backend-config 'region=us-east-1' -backend-config 'key=mcl_state_file/prod/terraform.tfstate' -migrate-state"
				} 
				}
	
			}
			}
		}
		
		stage('terraform Plan') {
 			steps {
               script {
				if("${env.ENVIRONMENT}".contains("dev")){
					withAWS(credentials: 'omni-aws-creds'){
					sh "terraform plan -no-color -var-file='dev.tfvars'"
					}
				}
				else if("${env.ENVIRONMENT}".contains("prod")){
					withAWS(credentials: 'omni-aws-creds'){
					sh "terraform plan -no-color -var-file='prod.tfvars'"
					}
				}
                    
               }
			
        }
      }
	stage('Waiting for Approvals') {
		when {
                anyOf {
					equals(actual: "${env.ENVIRONMENT}", expected: "dev")
					equals(actual: "${env.ENVIRONMENT}", expected: "prod")
                }
            }
      steps{
          input('Plan Validated? Please approve to apply changes in AWS?')
			  }
      }    	
   	
		
	stage('Terraform Apply'){
			steps{
				script{
				 if("${env.ENVIRONMENT}".contains("dev")){
					withAWS(credentials: 'omni-aws-creds'){
					sh "terraform apply -no-color -var-file='dev.tfvars' --auto-approve"
					}
				}
				else if("${env.ENVIRONMENT}".contains("prod")){
					withAWS(credentials: 'omni-aws-creds'){
					sh "terraform apply -no-color -var-file='prod.tfvars' --auto-approve"
					}
				}
			}
		}
			}
	}

	}
