class NewsletterSubscriptionsController < ApplicationController
  def create
    gibbon = Gibbon.new(Spree::Config.get(:newsletter_api_key))
    
    gibbon.list_subscribe(
      :id => Spree::Config.get(:newsletter_list_id),
      :email_address => params[:email]
    )
  end
end
