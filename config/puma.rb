if ENV['ENV'] != 'replit'
  port ENV.fetch('PORT', 5999).to_i
  environment ENV.fetch('RACK_ENV', 'development')
  bind 'tcp://0.0.0.0'

  # Número de procesos (cluster mode, opcional)
  # workers ENV.fetch("WEB_CONCURRENCY", 2).to_i

  # Hilos por proceso
  threads_count = ENV.fetch('PUMA_THREADS', 5).to_i
  threads threads_count, threads_count

  # PID y log (opcional)
  if ENV['LOGS'] == 'file'
    stdout_redirect 'log/puma.stdout.log', 'log/puma.stderr.log', true
  end

  # Permite reinicio vía `pumactl`
  plugin :tmp_restart
end
