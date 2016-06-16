class StaticPagesController < ApplicationController

	before_filter :authenticate_user!	
  def about
  end

  def help
  end

  def contact
  end  

  def title
  end  

  def moderation
  end   

  def star_trek
  end 
end
