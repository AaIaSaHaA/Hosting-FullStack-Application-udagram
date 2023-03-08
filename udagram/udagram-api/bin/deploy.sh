#npm run build && eb list && eb use Udagramapiaisha-env && eb deploy
#cd www

eb init Udagramapiaisha-env --region us-east-1
eb use Udagramapiaisha-env
eb deploy Udagramapiaisha-env