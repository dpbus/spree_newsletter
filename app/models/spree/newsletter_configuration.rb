class Spree::NewsletterConfiguration < Spree::Preferences::Configuration
  preference :newsletter_api_key, :string
  preference :newsletter_list_id, :string
end
