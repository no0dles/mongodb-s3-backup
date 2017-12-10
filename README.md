# mongodb-s3-backup

## Run
```
docker run -e MONGODB_HOST mongodb://localhost -e AWS_SECRET_ACCESS_KEY abc -e AWS_ACCESS_KEY_ID xyz -e S3_BUCKET bucket-name no0dles/mongodb-s3-backup
```

## Environments
| Name | Description |
| -- | -- |
| MONGODB_HOST | MongoDB URI  |
| AWS_SECRET_ACCESS_KEY | AWS Access Secret |
| AWS_ACCESS_KEY_ID | AWS Access Key |
| S3_BUCKET | AWS S3 Bucket name |