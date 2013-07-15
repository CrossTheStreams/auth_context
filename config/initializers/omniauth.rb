Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, FACEBOOK["settings"]["app_id"], FACEBOOK["settings"]["app_secret"] 
end
