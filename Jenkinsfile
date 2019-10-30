node { 
    def app
    
    stage('Cone repository') {
    /* clonning the repository to our work space */
    
    checkout scm 
    } 
    
    stage('Build image')  {
    /* this builds actual image */
    app = docker.build("ashwinip07/docker_test")
    
    }
    
    
    stage('Push image')
    {
    /* you would need to register with docker hub first */ 
    
    docker.withRegistry('','docker-hub1'){
    app.push("${env.BUILD_NUMBER}")
   app.push("latest")
          }
    
    echo "Trying to push docker build to docker hub" 
    }
    
 }   
    
    
