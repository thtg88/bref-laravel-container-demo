#!/usr/bin/env bash

# Exit on error
set -e

echo 'Deploy started!'

echo 'Installing composer dependencies...'

composer install -q --no-progress --prefer-dist --optimize-autoloader --no-dev -d src

echo 'Dependencies installed!'

# if [ -f src/gitpack-pre-deploy-local.sh ]
# then
#     cd src; ./gitpack-pre-deploy-local.sh; cd ..
# fi

echo 'Deploying...'

serverless deploy --stage production

echo 'Deployed to AWS!'

# if [ -f src/gitpack-post-deploy-local.sh ]
# then
#     cd src; ./gitpack-post-deploy-local.sh; cd ..
# fi

echo 'Deployment completed! Happy coding!'
