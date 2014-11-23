require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:acceptance) do |t|
  t.cucumber_opts = "--strict --format pretty --format html --out reports/acceptance.html"
end

task :boot do
  puts `vagrant up --no-provision`
end

task :destroy do
  puts `vagrant destroy -f`
end

task :reload do
  puts `vagrant reload`
end

task :install do
  puts `vagrant provision`
end

task :deploy => [:boot, :install]