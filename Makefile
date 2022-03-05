AWS_PROFILE=default
ENVIRONMENT=dev

deploy:
	sls deploy --aws-profile ${AWS_PROFILE}

package:
	sls package --stage ${ENVIRONMENT} --aws-profile ${AWS_PROFILE}

test:
	serverless invoke --function dataPipeline --stage dev --path event/data_pipeline.json --aws-profile default

remove:
	sls remove --aws-profile ${AWS_PROFILE}