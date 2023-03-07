# Hosting a Full-Stack Application

# Udagram

This application is provided to you as an alternative starter project if you do not wish to host your own code done in the previous courses of this nanodegree. The udagram application is a fairly simple application that includes all the major components of a Full-Stack web application.

## Dependencies

```
- Node v14.15.1 (LTS) or more recent. While older versions can work it is advisable to keep node to latest LTS version

- npm 6.14.8 (LTS) or more recent, Yarn can work but was not tested for this project

- AWS CLI v2, v1 can work but was not tested for this project

- A RDS database running Postgres.

- A S3 bucket for hosting uploaded pictures.

- Node v14.15.1 (LTS) or more recent. While older versions can work it is advisable to keep node to latest LTS version

- AWS Elastic Beanstalk for Backend.
```
### The project was built using
```
- Node
- AWS CLI
- EB CLI
```
### Backend
```
- typescript
- aws-sdk
- bcryptjs
- body-parser
- cors
- dotenv
- email-validator
- express
- jsonwebtoken
- pg
- reflect-metadata
- sequelize
- sequelize-typescript
- chai
- chai-http
- eslint
- eslint-config-google
- mocha
- ts-node-dev
```
### Front-end
```
- angular
- ionic
- typescript
- core-js
- rxjs
- zone.js
- codelyzer
- jasmine
- karma
- protractor
- ts-node
- tslint
```

## AWS Cloud Setup
- RDS - Database Host: database-project.c2hwt4na7xus.us-east-1.rds.amazonaws.com
- RDS - Database Port: 5432
- RDS - Database Name: database-project
- S3 Endpoint - Frontend: http://projectbucket4010058.s3-website-us-east-1.amazonaws.com
- Elastic Beanstalk URL - Backend: udagram-api-dev-aisha.eba-fzpvjdbq.us-east-1.elasticbeanstalk.com

## Environment Variables
Setup the following variables in the .env file or in the cloud environments:
- POSTGRES_HOST       = <Database_IP_Address>
- POSTGRES_DB         = <Database_Name>
- POSTGRES_USERNAME   = <Database_Username>
- POSTGRES_PASSWORD   = <Database_Password>
- JWT_SECRET          = <Any_PassPhrase>
- AWS_REGION          = <us-east-1>
- AWS_PROFILE         = <Profile>
- AWS_BUCKET          = <Bucket_Name>

## Pipeline
From the project root:
`npm run frontend:install` - To install frontend dependencies.
`npm run frontend:build` - To build the Frontend.
`npm run frontend:deploy` - To deploy the project to S3 using ./udagram-frontend/deploy.sh deploy script.

`npm run api:install` - To install backend dependencies.
`npm run api:build` - To transpile the Backend.
`npm run api:deploy` - To deploy the project to EB using ./udagram-api/bin/deploy.sh deploy script.

## CircleCi
The order of the run jobs:

- Setting Env Variables.
- Install NodeJS.
- Checkout Code & Cloning the Repo.
- Install AWS CLI v2.
- Check & Disable AWS pager.
- Configure AWS AccessKeyID.
- Configure AWS Region.
- Frontend:
-- Install dependencies.
-- Build the angular.
-- Deploy the site to AWS S3.
- Backend:
-- Install dependencies.
-- Change The main entry point in package.json.
-- Transpile the typescript/ build the app.
-- Install AWS Elastic Beanstalk CLI.
-- Deploy the app to AWS Elastic Beanstalk.

## Testing

This project contains two different test suite: unit tests and End-To-End tests(e2e). Follow these steps to run the tests.

1. `cd starter/udagram-frontend`
1. `npm run test`
1. `npm run e2e`

There are no Unit test on the back-end

### Unit Tests:

Unit tests are using the Jasmine Framework.

### End to End Tests:

The e2e tests are using Protractor and Jasmine.

## Built With

- [Angular](https://angular.io/) - Single Page Application Framework
- [Node](https://nodejs.org) - Javascript Runtime
- [Express](https://expressjs.com/) - Javascript API Framework

## License

[License](LICENSE.txt)
