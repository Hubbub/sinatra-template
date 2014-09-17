ENV["NEW_RELIC_AGENT_ENABLED"] ||= "false"
ENV["CORS_ALLOWED_ORIGINS"] ||= "http://localhost:#{ENV["PORT"]}"
ENV["CORS_ALLOWED_HEADERS"] ||= "Content-Type"

require 'rack/cors'
require './web'
require 'newrelic_rpm'

use Rack::Cors do
  allow do
    origins ENV["CORS_ALLOWED_ORIGINS"].split(/,\s?/)
    resource '*',
      methods: [ :get, :post, :put, :delete, :options, :patch ],
      headers: ENV["CORS_ALLOWED_HEADERS"].split(/,\s?/)
  end
end

run Sinatra::Application
