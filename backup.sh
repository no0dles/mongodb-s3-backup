TIME=`date '+%Y-%m-%d-%H%M%S'`
DEST=/tmp/backup
TAR=/tmp/backup-$TIME.tar.gz

mkdir -p $DEST

if [ -z "$MONGODB_USERNAME" ] 
then
  mongodump --host $MONGODB_HOST \
    --port $MONGODB_PORT \
    --username $MONGODB_USERNAME \
    --password $MONGODB_PASSWORD \
    -o $DEST || { echo "mongodump failed"; exit 1; }
else
  mongodump --host $MONGODB_HOST \
    --port $MONGODB_PORT \
    -o $DEST || { echo "mongodump failed"; exit 1; }
fi

cd $DEST
tar -zcvf $TAR .

aws s3 cp $TAR s3://$S3_BUCKET/ || { echo "aws upload failed"; exit 1; }
