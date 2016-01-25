require 'petfinder'

Petfinder.configure do |config|
  config.api_key = ENV["petfinder_key"]
  config.api_secret = ENV["petfinder_secret"]
end
Petfinder = Petfinder::Client.new
