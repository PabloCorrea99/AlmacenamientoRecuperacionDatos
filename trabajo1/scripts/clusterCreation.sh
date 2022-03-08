aws emr create-cluster
--auto-scaling-role EMR_AutoScaling_DefaultRole
--applications
Name=Hadoop
Name=Hive
Name=Spark
Name=Hue
Name=JupyterEnterpriseGateway
Name=Zeppelin
Name=JupyterHub
Name=Livy
Name=HCatalog
Name=Tez
--ebs-root-volume-size 10
--ec2-attributes
'{"KeyName":"trabajo1","InstanceProfile":"EMR_EC2_DefaultRole","SubnetId":"subnet-00bf87a3bc6e31b44","EmrManagedSlaveSecurityGroup":"sg-0c50c3d5073bcf7af","EmrManagedMasterSecurityGroup":"sg-0aed4a70fe4ab77fd"}'
--service-role EMR_DefaultRole
--enable-debugging
--release-label emr-6.3.1
--log-uri
's3n://aws-logs-631560150517-us-east-1/elasticmapreduce/'
--name
'trabajo01-st1800'
--instance-groups
'[{"InstanceCount":1,"EbsConfiguration":{"EbsBlockDeviceConfigs":[{"VolumeSpecification":{"SizeInGB":32,"VolumeType":"gp2"},"VolumesPerInstance":2}]},"InstanceGroupType":"MASTER","InstanceType":"m5.xlarge","Name":"Master - 1"},{"InstanceCount":2,"EbsConfiguration":{"EbsBlockDeviceConfigs":[{"VolumeSpecification":{"SizeInGB":32,"VolumeType":"gp2"},"VolumesPerInstance":2}]},"InstanceGroupType":"CORE","InstanceType":"m5.xlarge","Name":"Core - 2"}]'
--configurations
'[{"Classification":"hive-site","Properties":{"hive.metastore.client.factory.class":"com.amazonaws.glue.catalog.metastore.AWSGlueDataCatalogHiveClientFactory"}},{"Classification":"spark-hive-site","Properties":{"hive.metastore.client.factory.class":"com.amazonaws.glue.catalog.metastore.AWSGlueDataCatalogHiveClientFactory"}}]'
--scale-down-behavior
TERMINATE_AT_TASK_COMPLETION
--region us-east-1