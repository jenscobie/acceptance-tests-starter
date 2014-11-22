require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:functional) do |t|
  t.cucumber_opts = "--strict --format pretty --format html --out reports/functional.html"
  `open reports/functional.html`
end