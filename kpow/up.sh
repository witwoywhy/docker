docker run \
    --name kpow \
    -d \
    -p 3000:3000 \
    --network=kafka_kafka-net \
    -m2G \
    --env-file $KPOW_HOME/no-auth.env \
    factorhouse/kpow-ce:latest