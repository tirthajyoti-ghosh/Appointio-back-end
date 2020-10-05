if Rails.env == "production"
  # TODO: change the URL when API is hosted on Heroku
  Rails.application.config.session_store :cookie_store, key: "_final_capstone", domain: "https://tg-final-capstone.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_final_capstone"
end