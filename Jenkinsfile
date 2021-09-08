node {
    checkout scm

    docker.withRegistry(‘https://registry.hub.docker.com', ‘mounikamyla’) {

         def customImage = docker.build(shoppingclient/client)
  
         customImage.push()
    }
}
