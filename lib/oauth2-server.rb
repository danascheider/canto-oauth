require 'sinatra/base'
require 'json'
require 'uuidtools'
require 'mysql2'
require 'sequel'

require_relative "./oauth2-server/authorization_server"

OAUTH2_DB_URL = ENV['OAUTH2_DB_URL'] || 'mysql2://oauth-server:hunter2@localhost:3306/oauth'

if ENV['OAUTH2_DB_URL']
  Sequel.connect ENV['OAUTH2_DB_URL'] 
  require_relative "./oauth2-server/registered_client"
  require_relative "./oauth2-server/authorization"
  require_relative "./oauth2-server/token"
end

require_relative "./oauth2-server/version"
