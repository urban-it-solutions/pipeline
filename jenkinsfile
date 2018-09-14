try {
   timeout(time: 20, unit: 'MINUTES') {
      node('nodejs') {
          stage('build') {
            openshiftBuild(buildConfig: 'pipeline', showBuildLogs: 'true')
          }
          stage('deploy') {
            openshiftDeploy(deploymentConfig: 'pipeline')
          }
        }
   }
} catch (err) {
   echo "in catch block"
   echo "Caught: ${err}"
   currentBuild.result = 'FAILURE'
   throw err
}          
