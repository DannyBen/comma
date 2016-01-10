%w(4.0.13 4.1.14 4.2.5 5.0.0.beta1).each do |version|
  appraise "rails-#{version}" do
    gem 'rails', version
    gem 'rspec-rails'
  end

  appraise "activerecord-#{version}" do
    gem 'activerecord', version
  end
end

%w(4.0.2 5.0.2).each do |version|
  appraise "mongoid-#{version}" do
    gem 'mongoid', version
  end
end
