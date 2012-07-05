DataMapper.setup(:default, "mysql://root@localhost/deployments-app-test")
DataMapper.finalize
DataMapper.auto_migrate!

