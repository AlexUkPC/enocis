pipeline {
    agent {
        label 'ssh'  
    }
    parameters {
        string(name: 'REF', defaultValue: '\${ghprbActualCommit}', description: 'Commit to build')
    }
    stages {
        stage('Prepare x files') {
           steps {
                sh 'chmod +x *.sh'
                sh 'chmod +x enocis/docker-entrypoint.sh'
                sh 'chmod +x enocis/bin/*'
            }
        }
        stage('Bundle Install') {
            steps {
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml run --rm web_enocis_jenkins bundle install'
            }
        }
        stage('Webpacker Install') {
            steps {
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml run --rm web_enocis_jenkins bin/rails webpacker:install'
            }
        }
        stage('Stop old containers') {
            steps {
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml stop'
            }
        }
        stage('Start server') {
            steps {
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml up -d --remove-orphans --force-recreate'
            }
        }
        stage('Create database') {
            steps {
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml exec -T --user "$(id -u):$(id -g)" web_enocis_jenkins bin/rails db:drop'
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml exec -T --user "$(id -u):$(id -g)" web_enocis_jenkins bin/rails db:create'
            }
        }
        stage('Migrate database') {
            steps {
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml exec -T --user "$(id -u):$(id -g)" web_enocis_jenkins bin/rails db:migrate'
            }
        }
        stage('Seed database') {
            steps {
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml exec -T --user "$(id -u):$(id -g)" web_enocis_jenkins bin/rails db:seed:replant'
            }
        }
        stage('Wait for server to start') {
            steps {
                timeout(10) {
                    waitUntil {
                        script {
                            try {
                                def response = httpRequest 'http://0.0.0.0:13002'
                                return (response.status == 200)
                            }
                            catch (exception) {
                                return false
                            }
                        }
                    }
                }
            }
        }
        stage('Unit test') {
            steps {
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml exec -T --user "$(id -u):$(id -g)" web_enocis_jenkins bin/rails test:models'
            }   
        } 
        stage('Stop containers') {
            steps {
                sh '/usr/local/bin/docker-compose -f docker-compose-jenkins.yml stop'
            }
        }
    }
}