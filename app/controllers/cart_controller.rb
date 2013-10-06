class CartController < ApplicationController
  
  require "base64"
  before_filter :load_details

  def select
  	@active_products = Product.where("status=1")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  def personalize
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end    
  end

  def address
  end

  def view
  end

  def about
    respond_to do |format|
    format.html { render :layout => false }
    end    
  end

  def faq
    respond_to do |format|
    format.html { render :layout => false }
    end    
  end

  def terms
    respond_to do |format|
    format.html { render :layout => false }
    end
  end

  def detail
    @product = Product.find(params[:product_id])
    respond_to do |format|
    format.html { render :layout => false }
    end    
  end

  def obit
    @obituary = Obituary.find(params[:o_id])
    respond_to do |format|
    format.html { render :layout => false }
    end    
  end

  def load_details
    sKey = "bCC_key"

    if(params.has_key?(:bccstring))
      reset_session

      sConverted = Base64.decode64(params[:bccstring])
      sTranslated = sConverted.unpack('C*').zip(sKey.unpack('C*')).map{ |a,b| (a||0) ^ (b||0) }.pack('C*')
      hash = {}
      sTranslated.split('&').each do |pair|
        key,value = pair.split(/=/)
        hash[key] = value
      end
    end

    @fh_details = hash

  end

end