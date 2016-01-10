$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

require 'coveralls'
Coveralls.wear!

begin
  require 'rails'
rescue LoadError
end

require 'bundler/setup'
Bundler.require

require 'rspec/active_model/mocks'
require 'rspec/its'

%w{active_record mongoid}.each do |orm|
  begin
    require orm
    break
  rescue LoadError
  end
end

if defined? Rails
  require 'rails_app/rails_app'
  require 'rspec/rails'
else
  require 'rails_app/mongoid/config' if defined?(Mongoid)
  require 'rails_app/active_record/config' if defined?(ActiveRecord)
end

require File.expand_path('../../spec/non_rails_app/ruby_classes' , __FILE__)
