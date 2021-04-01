# Harbormaster CircleCI Orb - Project Generator

![alt text](http://harbormaster.ai/wp-content/uploads/2021/03/captain_harbormaster-e1617238219491.png)

The Harbormaster Orb is a simple, yet powerful way to leverage CircleCI to automate the generation of DevOps projects to produce fully functional applications that can be deployed to, tested, and run through your CircleCI pipeline.  Choose from a growing set of tech stacks.

#### High Level Overview
![alt text](http://harbormaster.ai/wp-content/uploads/2021/04/harbormaster-orb-how-it-works.png)

#### Version
    version: 2.1

#### Orb Declaration
    orbs:
    harbormaster: harbormaster/projectgen@1.0.0

#### Job Declaration
    jobs:
      generate-app:
        docker:
          - image: 'circleci/node:latest'
        steps:
          - harbormaster/initialize:
              api-token: "Use DsJqTpYht3LcKb80 or PUT_YOUR_API_TOKEN_HERE"

A general CircleCI user account has been created resulting in user token DsJqTpYht3LcKb80.  If you prefer your own token, click [here](platform.harbormaster.com) to subscribe then create an account and access your unique generated API token.

#### Workflows
	workflows:
		version: 2
		app-gen-workflow:
			jobs:
			- generate-app

## Project_as_Code Examples 

To invoke project generation, one mandatory YAML file is required. It is known as a _Project-as-Code_ file. This file is referenced from the root of your Git repository since they are being accessed from the Orb.

Visit [here](https://harbormaster.ai/harbormaster-project-generation/) to to learn about the Project-as-Code file content.

Visit [here](https://github.com/Harbormaster-AI/circle.ci.orb/tree/main/samples) to view all sample model and Projec-as-Code YAML configuration files.


#### generation-yaml-file (__mandatory__):
  
This YAML file contains the directives required to generate a project using a model identifier (by name, id or file_path), technology stack (by name or id), application options file, Docker params, CI/CD type, Git repo params and more.  
  
* Learn more about project-as-code YAML file [here](https://harbormaster.ai/harbormaster-project-generation/). 
* See project-as-code examples [here](https://github.com/Harbormaster-AI/circle.ci.orb/tree/main/samples/yamls/project.as.code)

`NOTE: Use one of the project-as-code examples as a starting point.  Fill it out and replace existing values with those relevant to your project.`
  
#### Known Issue
	
During the first run of a build, from time to time the following issues has been observed:
	
``Cannot find a job named build to run in the jobs: section of your configuration file.  If you expected a workflow to run, check your config contains a top-level key called workflows:``

The problem appears to be quickly fixed if the config.yml file in the repository is touched (e.g. by making a whitespace only change).
[Read more](https://discuss.circleci.com/t/if-you-expected-a-workflow-to-run-check-your-config-contains-a-top-level-key-called-workflows/16798) in this related CircleCI thread

#### Stack Specific Examples

#### Angular7          
      - harbormaster/generate_devops_project:
          generation-yaml-file: "samples/yamls/project.as.code/angular7-mongo-project-as-code.yml"

#### Angular8
      - harbormaster/generate_devops_project:
          generation-yaml-file: "samples/yamls/project.as.code/angular9-mongo-project-as-code.yml"

#### Apollo GraphQL
      - harbormaster/generate_devops_project:
          generation-yaml-file: "samples/yamls/project.as.code/apollo-project-as-code.yml"

#### ASP.NET          
      - harbormaster/generate_devops_project:
          generation-yaml-file: "samples/yamls/project.as.code/aspdotnet-project-as-code.yml"

Note: If using one of the following AWS Lambda tech stacks, you will have to assign the access key and secret key as project level environment variables.  See https://circleci.com/docs/2.0/env-vars/#setting-an-environment-variable-in-a-project for more details. Be sure to name the accesskey USER\_AWS\_ACCESSKEY and name the secretkey USER\_AWS\_SECRETKEY.  Equally important, 
make sure you have the correct policies assigned for the related user (_AWSCodeDeployRoleForLambda, AWSLambdaExecute, AWSLambdaRole_, etc..)

#### AWS Lambda using MongoDB
      - harbormaster/generate_devops_project:
          generation-yaml-file: "samples/yamls/project.as.code/aws_lambda-mongo-project-as-code.yml"

#### AWS Lambda using Relational DB
      - harbormaster/generate_devops_project:
          generation-yaml-file: "samples/yamls/project.as.code/aws_lambda-rdbms-project-as-code.yml"

#### ASP.NET          
      - harbormaster/generate_devops_project:
          generation-yaml-file: "samples/yamls/project.as.code/aspdotnet-project-as-code.yml"

#### Django
      - harbormaster/generate_devops_project:
          generation-yaml-file: "samples/yamls/project.as.code/django-project-as-code.yml"

#### Google Functions          
      - harbormaster/generate_devops_project:
         generation-yaml-file: "samples/yamls/project.as.code/googlefunctions-project-as-code.yml"

#### Spark Microweb using MySQL
      - harbormaster/generate_devops_project:
          generation-yaml-file: "samples/yamls/project.as.code/sparkmicroweb-project-as-code.yml"


#### Spring Boot using MongoDB
      - harbormaster/generate_devops_project:
          generation-yaml-file: "samples/yamls/project.as.code/springboot-mongodb-project-as-code.yml"

           
#### Spring Boot using MySQL          
      - harbormaster/generate_devops_project:
          generation-yaml-file: "samples/yamls/project.as.code/springboot-rdbms-project-as-code.yml"
           

#### Struts2 using MySQL
      - harbormaster/generate_devops_project:
          generation-yaml-file: "samples/yamls/project.as.code/struts-rdbms-project-as-code.yml"

