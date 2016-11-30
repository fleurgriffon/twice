require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Twice
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.paperclip_defaults = {
            storage: :s3,
            s3_host_name: "s3-#{ENV['AWS_REGION']}.amazonaws.com",
            s3_credentials: {
                bucket: ENV.fetch('S3_BUCKET_NAME'),
                access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
                secret_access_key: ENV.fetch('AWS_SECRET_KEY'),
                s3_region: ENV.fetch('AWS_REGION')
            }
        }
  end



end
