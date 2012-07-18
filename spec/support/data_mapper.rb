DataMapper.setup(:default, 'sqlite::memory:')
DataMapper.finalize.auto_migrate!

