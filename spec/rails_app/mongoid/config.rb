Mongoid.configure do |config|
  config.load_configuration(
    clients: {
      default: { hosts: %w{localhost:27017}, database: 'comma_test' }
    }
  ) if Mongoid::VERSION >= '5.0'

  config.sessions = {
    default: { hosts: %w{localhost:27017}, database: 'comma_test' }
  } if Mongoid::VERSION < '5.0'
end
