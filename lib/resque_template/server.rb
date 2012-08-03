require 'resque_template'
require 'resque/server'

module ResqueTemplate
  module Server
    path = File.dirname(File.expand_path(__FILE__))
    # Set new public dir
    if respond_to? :public_folder
      set :public_folder, "#{path}/server/public"
    else
      set :public, "#{path}/server/public"
    end

  end
end

Resque::Server.class_eval do
  include ResqueTemplate::Server
end