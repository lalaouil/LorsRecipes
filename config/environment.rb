# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

require 'carrierwave/orm/activerecord'

# Force all access to the app over SSL, use Strict-Transport-Security,
# and use secure cookies.
config.force_ssl = true
