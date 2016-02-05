OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1751367148426041', '5a303ee98bce3b06c2af6305b50116fd', {:provider_ignores_state => true}
end