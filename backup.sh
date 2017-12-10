TIME=`date '+%Y-%m-%d-%H%M%S'`
DEST=/tmp/backup
TAR=/tmp/backup-$TIME.tar.gz

mkdir -p $DEST
mongodump -h $MONGODB_HOST -o $DEST

cd $DEST
tar -zcvf $TAR .

aws s3 cp $TAR s3://$S3_BUCKET/