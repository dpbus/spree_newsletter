class Spree::NewsletterSubscriptionsController < Spree::BaseController
  def create
    gibbon = Gibbon.new(Spree::Newsletter::Config[:newsletter_api_key])
    
    success = gibbon.list_subscribe(
      :id => Spree::Newsletter::Config[:newsletter_list_id],
      :email_address => params[:email]
    )
    
    flash[:newsletter_subscribe_result] = success ? t('newsletter.success') : t('newsletter.failure')
    
    render :layout => false
  end
end
