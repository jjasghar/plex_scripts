require 'sinatra'

set :bind, '0.0.0.0'

set :root, File.dirname(__FILE__)

get '/r' do
    `curl --silent "http://10.0.1.26:32400/library/sections/1/refresh"`
    t = Time.now
    "update happened at #{t}"
end

get '/d' do
    `curl --silent "http://10.0.1.26:32400/library/sections/1/refresh?deep=1"`
end

get '/fr' do
    `curl --silent "http://10.0.1.26:32400/library/sections/1/refresh?force=1"`
end
