class StaticPagesController < ApplicationController


  def about
  end

  def help
  end

  def contact
  end  

  def title
  end  

  def moderation
    render :layout => 'gradient'
  end   

  def startrek
    render :layout => 'gradient'
  end 

  def sysiphus
    render :layout => 'gradient'
  end 

end
