class Spree::NewsletterSubscriptionsController < Spree::BaseController
  def create
    gibbon = Gibbon.new(Spree::Newsletter::Config[:newsletter_api_key])
    
    gibbon.list_subscribe(
      :id => Spree::Newsletter::Config[:newsletter_list_id],
      :email_address => params[:email]
    )
    
    render :layout => false
  end
end
