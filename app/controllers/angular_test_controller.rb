class AngularTestController < ApplicationController
	def index

	end


  def paging
    if params[:searchwords].present?
      #@nominees = Nominee.search(params[:kewords])
      @journals = Journal.full_text_search(params[:searchwords])
      #@searched_for = params[:searchwords]
    else
      @journals = Journal.where(:notes.exists => true, :notes.ne => "").order_by(entry_for: :desc)
    end
    respond_to do |format|
    format.html {}
    format.json {render json: @journals}
  end
  	
end
