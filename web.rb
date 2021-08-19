require 'sinatra'
require 'pg'

get '/' do
  url = ENV['HEROKU_POSTGRESQL_KBARBER_BLUE_URL']
  conn = PG.connect(url + '?sslmode=verify-full&sslrootcert=/etc/ssl/certs/ca-certificates.pem')
  pid = conn.backend_pid
  "Hello, world, My pid is #{pid}"
end
