class HomeController < ApplicationController
  def index
  	render layout: false
  end
  
  def home
  	
  end  

  def contact_email
  	HomeMailer.send_contact_email(email_name,email_address,email_message).deliver_now
  end	
end
