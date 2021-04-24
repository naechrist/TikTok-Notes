Rails.application.config.middleware.use OmniAuth::Builder do

  provider :google_oauth2, '169544872382-29cdq3gqgiie81naa9ha1huqd9k4mfq8.apps.googleusercontent.com', '5qwFR-78NVHszzb2V_blFygQ'
# OmniAuth.config.full_host = Rails.env.production? ? 'https://domain.com' : 'http://localhost:3000'
end
