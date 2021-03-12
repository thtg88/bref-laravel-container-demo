# Bref Laravel Container Demo

This project is a container of an application that will run Bref on AWS Lambda. The target Laravel application will have to be copied in the `src` folder.

## Requirements

- PHP 8.0
- Composer
- Serverless (`npm i -g serverless`)
- AWS CLI with a profile set up (`aws configure`). See [this blog article](https://blog.marco-marassi.com/posts/run-serverless-laravel-app-with-queue-workers-on-aws-lambda-using-bref) on how to prepare your AWS environment for usage with this stack

## Usage

```bash
composer create-project thtg88/bref-laravel-container-demo
```

Then either copy your application code within the `src` folder, or git clone into it.

## Deployment

This will create a CloudFormation stack using the configured AWS credentials in your own CLI profile (`aws configure` for setting them up). See [this blog article](https://blog.marco-marassi.com/posts/run-serverless-laravel-app-with-queue-workers-on-aws-lambda-using-bref) on how to prepare your AWS environment for usage with Serverless

```bash
./deploy.sh
```

## Development

```bash
git clone git@github.com:thtg88/bref-laravel-container-demo.git
composer install
```
