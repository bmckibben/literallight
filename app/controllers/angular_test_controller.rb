class AngularTestController < ApplicationController
	def index

	end


  def paging
    @journals = Journal.all.order_by(entry_for: :desc).limit(10)
  end
  	
end
