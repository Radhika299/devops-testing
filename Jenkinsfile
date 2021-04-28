pipeline{

  agent any
  
  
  stages {
  
    stage('checkout source'){
          steps{

           git 'https://github.com/vimallinuxworld13/jenkins-kubernetes-deploy.git'
          }

      }
    
      stage('print something'){
          steps{
            script{
            
             sh "echo here i am "
            }


          }
      }
  
  }

}
