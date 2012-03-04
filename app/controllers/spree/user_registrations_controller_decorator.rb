Spree::UserRegistrationsController.class_eval do
  after_filter :subscribe_to_newsletter, :only => [:create]
  
  def subscribe_to_newsletter
    if params[:user][:subscribe_to_newsletter].to_i.equal?(1)
      gibbon = Gibbon.new(Spree::Newsletter::Config[:newsletter_api_key])
    
      gibbon.list_subscribe(
        :id => Spree::Newsletter::Config[:newsletter_list_id],
        :email_address => @user.email
      )
    end
  end
end