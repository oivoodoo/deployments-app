guard 'rspec', :cli => '--format documentation', :version => 2, :all_after_pass => false, :all_on_start => false, :keep_failed => false do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^spec/.+\.rb$})
  watch(%r{^lib/(.+)\.rb$})                         { "spec" }
  watch(%r{^lib/deployments-app/models/(.+)\.rb$})  { "spec/models/" }
  watch(%r{^lib/deployments-app/(.+)\.rb$})         { "spec" }
  watch('spec/spec_helper.rb')                      { "spec" }
end
