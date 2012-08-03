require 'resque_template'
require 'resque/server'

module ResqueTemplate
  module Server
  
  end
end
path = File.dirname(File.expand_path(__FILE__))
Resque::Server.public_folder = "#{path}/server/public"