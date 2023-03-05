#npm run build && eb list && eb use udagram-api-dev && eb deploy
cd www
eb init --region $AWS_REGION $EB_APP
eb deploy $EB_ENV