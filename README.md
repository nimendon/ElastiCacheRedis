# ElastiCacheRedis

Getting started with redis:
Step 1.
Launch a Cluster:
Output:
 

Step 2.
Authorize Access:
The most common scenario is to access an ElastiCache cluster from an Amazon EC2 instance in the same Amazon Virtual Private Cloud (Amazon VPC). Make sure the ec2 instances and Cluster are in the same AZ’s. Make the Custom TCP rule 6379 port open in the inbound traffic rules of an ec2 instances so that we can connect to the cluster with the ec2 instances.

 

Step 3.
Connect to a clusters node:
3.1 To connect to a Redis cluster that is not encryption-enabled using redis-cli, we need to download GNU compiler collection by entering the command : sudo yum install gcc
3.2 To connect to the redis-cli utility by entering the commands as shown below:
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make distclean  // Ubuntu systems only
make

3.3 At the command prompt of your EC2 instance, type the following command, substituting the endpoint of your cluster and port for what is shown in this output:
src/redis-cli -c –h myrediscluster.txfsn4.0001.use1.cache.amazonaws.com -p 6379

 

 

Connecting to the redis cluster Node using aws cli
 


