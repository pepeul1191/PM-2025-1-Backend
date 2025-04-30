require 'rake'

desc "Iniciar la app Sinatra con rackup"
task :server do
  sh "rackup config.ru"
end

desc "Iniciar la app con rerun para autoreload"
task :dev do
  sh "bundle exec rerun --pattern '**/*.rb' -- bundle exec rackup -s puma config.ru"
end