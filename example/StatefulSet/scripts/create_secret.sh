# Create keyfile for the MongoD cluster as a Kubernetes shared secret
TMPFILE=$(mktemp)
/usr/bin/openssl rand -base64 741 > $TMPFILE
kubectl create secret generic shared-mongodb-data --from-file=internal-auth-mongodb-keyfile=$TMPFILE
rm $TMPFILE