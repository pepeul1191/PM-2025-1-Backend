require 'rake'
require 'fileutils'

# Método para asegurar que public/tmp exista
def ensure_tmp_dir
  tmp_dir = File.expand_path('public/tmp')
  FileUtils.mkdir_p(tmp_dir) unless Dir.exist?(tmp_dir)
  log_dir = File.expand_path('log')
  FileUtils.mkdir_p(log_dir) unless Dir.exist?(log_dir)
end

desc "Iniciar la app Sinatra con rackup"
task :server do
  ensure_tmp_dir
  sh "rackup config.ru"
end

desc "Iniciar la app con rerun para autoreload"
task :dev do
  ensure_tmp_dir
  sh "bundle exec rerun --pattern '**/*.rb' -- bundle exec rackup -s puma config.ru"
end

desc 'Iniciar la app con rerun para autoreload en replit'
task :replit do
  ensure_tmp_dir
  sh "bundle exec rerun --pattern '**/*.rb' -- bundle exec rackup -s puma config.ru -o 0.0.0.0 -p 8080"
end