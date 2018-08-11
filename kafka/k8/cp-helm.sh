
# git clone https://github.com/confluentinc/cp-helm-charts.git

helm install --name my-confluent-oss cp-helm-charts
helm install --set cp-schema-registry.enabled=false,cp-kafka-rest.enabled=false,cp-kafka-connect.enabled=false cp-helm-charts

helm list
helm test my-confluent-oss

kubectl get pods

# kubectl exec -c cp-kafka-broker -it my-confluent-oss-cp-kafka-0 -- /bin/bash /usr/bin/kafka-console-producer --broker-list localhost:9092 --topic test
# kubectl exec -c cp-kafka-broker -it my-confluent-oss-cp-kafka-0 -- /bin/bash  /usr/bin/kafka-console-consumer --bootstrap-server localhost:9092 --topic test --from-beginning

# kubectl apply -f cp-helm-charts/examples/zookeeper-client.yaml

# kubectl exec -it zookeeper-client -- /bin/bash zookeeper-shell <zookeeper service>:<port> ls /brokers/ids
# kubectl exec -it zookeeper-client -- /bin/bash zookeeper-shell <zookeeper service>:<port> get /brokers/ids/0
# kubectl exec -it zookeeper-client -- /bin/bash zookeeper-shell <zookeeper service>:<port> ls /brokers/topics

# kubectl apply -f cp-helm-charts/examples/kafka-client.yaml
# kubectl exec -it kafka-client -- /bin/bash

# ## Setup
# export RELEASE_NAME=<release name>
# export ZOOKEEPERS=${RELEASE_NAME}-cp-zookeeper:2181
# export KAFKAS=${RELEASE_NAME}-cp-kafka-headless:9092

# ## Create Topic
# kafka-topics --zookeeper $ZOOKEEPERS --create --topic test-rep-one --partitions 6 --replication-factor 1

# ## Producer
# kafka-run-class org.apache.kafka.tools.ProducerPerformance --print-metrics --topic test-rep-one --num-records 6000000 --throughput 100000 --record-size 100 --producer-props bootstrap.servers=$KAFKAS buffer.memory=67108864 batch.size=8196

# ## Consumer
# kafka-consumer-perf-test --broker-list $KAFKAS --messages 6000000 --threads 1 --topic test-rep-one --print-metrics

