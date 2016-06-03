
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
   :scope => 'public_profile', :info_fields => 'id,first_name,last_name,age_range,gender,link'
   #display: 'popup'
end
