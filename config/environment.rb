# Load the rails application
require File.expand_path('../application', __FILE__)

FACEBOOK = YAML.load_file("#{Rails.root.to_s}/config/facebook.yml")

# Initialize the rails application
AuthContext::Application.initialize!
