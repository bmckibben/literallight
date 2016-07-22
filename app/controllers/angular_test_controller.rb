class AngularTestController < ApplicationController
	def index

	end


  def paging
  	if params[:keywords].present?
  		@keywords  =params[:keywords]
  		musing_searchTerm = MusingSearchTerm.new(@keywords)
  		@jourals = Journal.where(
  			musing_search_term.where_clause,
  			musing_search_term.where_args).
  			order_by(entry_for: :desc)
  	else	
    	@journals = Journal.where(:notes.exists => true, :notes.ne => "").order_by(entry_for: :desc).limit(10)
	end
  end
  	
end
