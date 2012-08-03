require 'resque_template'
require 'resque/server'

module ResqueTemplate
  module Server
    
  end
end

Resque::Server.class_eval do
  include ResqueScheduler::Server
end