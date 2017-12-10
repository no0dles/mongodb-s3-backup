# mongodb-s3-backup

## Run
```
docker run -e AWS_SECRET_ACCESS_KEY=abc \
	-e AWS_ACCESS_KEY_ID=xyz \
	-e S3_BUCKET=bucket-name \
	no0dles/mongodb-s3-backup
```

## Environment variables
| Name | Description | Default value | Required |
| -- | -- | -- | -- |
| MONGODB_HOST | MongoDB Host | localhost | no |
| MONGODB_PORT | MongoDB Port | 27017 | no |
| MONGODB_USERNAME | MongoDB Username  | - | no |
| MONGODB_PASSWORD | MongoDB Password  | - | no |
| AWS_SECRET_ACCESS_KEY | AWS Access Secret | - | yes |
| AWS_ACCESS_KEY_ID | AWS Access Key | - | yes |
| S3_BUCKET | AWS S3 Bucket name | - | yes |