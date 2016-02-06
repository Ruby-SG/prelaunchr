OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '696018187184969', '71069401edc1a34a80ce9f7c79240c53', {:provider_ignores_state => true}
end