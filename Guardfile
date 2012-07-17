guard 'rspec', :cli => '--format documentation', :version => 2, :all_after_pass => false, :keep_failed => false do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^spec/.+\.rb$})
  watch(%r{^spec/factories/.+\.rb$})
  watch(%r{^lib/(.+)\.rb$})                         { "spec" }
  watch(%r{^lib/deployments-app/routes/(.+)\.rb$}) { |m| Dir[File.join("spec/routes/#{m[1]}_spec.rb")][0] || 'spec' }
  watch(%r{^lib/deployments-app/models/(.+)\.rb$})  { "spec/models/" }
  watch(%r{^lib/deployments-app/(.+)\.rb$})         { "spec" }
  watch('spec/spec_helper.rb')                      { "spec" }
end

guard 'cucumber',:all_after_pass => false do
  watch(%r{^views/.+\.haml$})                       { 'features' }
  watch(%r{^lib/deployments-app/views/.+\.haml$})   { 'features' }
  watch(%r{^lib/deployments-app/routes/(.+)\.rb$}) { |m| Dir[File.join("features/#{m[1]}/")][0] || 'features' }
  watch(%r{^features/.+\.feature$})
  watch(%r{^features/support/.+$})                  { 'features' }
  watch(%r{^features/step_definitions/(.+)_steps\.rb$}) { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'features' }
end

