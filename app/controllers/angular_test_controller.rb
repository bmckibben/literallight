class AngularTestController < ApplicationController
	def index

	end


  def paging
    @journals = Journal.where(:notes.exists => true, :notes.ne => "").order_by(entry_for: :desc).limit(10)
  end
  	
end
