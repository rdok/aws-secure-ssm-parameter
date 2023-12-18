deploy:
	rm -rf .aws-am
	sam build --template infrastructure.yml
	sam deploy \
		--stack-name "ssm-prod-secure-parameter" \
		--s3-bucket "riz-cicd" \
		--s3-prefix "ssm-prod-secure-parameter" \
		--capabilities CAPABILITY_IAM \
		--disable-rollback \
		--no-fail-on-empty-changeset

