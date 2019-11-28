# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => "ddf884d6d8c637b330903b781abf47e6",
  :password => "a570bfdd1b8b37d7f21dd10562d84a28",
  :address => "in-v3.mailjet.com",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}



