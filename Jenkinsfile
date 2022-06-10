pipeline{
  environment{
    env.PATH = env.PATH + ";c:\\Windows System32"
    reg = "titanbreaker/DO_10"
    regCre = "docker_id"
    dockerImg = ""
  }
  agent any
  stages{
    stage('Build Image'){
      steps{
        script{
          dockerImg = docker.build reg + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy the image'){
      steps{
        script{
          docker.withRegistry('',regCre){
            dockerImg.push()
          }
        }
      }
    }
  }
}
