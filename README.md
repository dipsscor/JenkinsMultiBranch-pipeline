# Jenkins MultiBranch Pipeline
This is Demonstration project for Multibranch pipelines using JenkinsFile (Pipeline as code)


# Jenkins Setup:

### Install Jenkins on Docker
docker run -p 8989:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts

#### Install Required plugins
Install Git , maven and other plugins

#### Configure GIT Credentials
Configure Usename/password in global credentials

#### Configure a multibranch pipeline

    1. Add a GIT "Branch sources".
    2. Add the GIT URL : https://github.com/dipsscor/JenkinsMultiBranch-pipeline.git.
    3. Add regular expression for branch filtering:
        ^dev|master|feature.*$
        

    

 



# References
      https://www.youtube.com/watch?v=pMO26j2OUME&list=PLy7NrYWoggjw_LIiDK1LXdNN82uYuuuiC