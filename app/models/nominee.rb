class Nominee
  include Mongoid::Document
  include Mongoid::Search
  field :year, type: String
  field :award, type: String
  field :author, type: String
  field :title, type: String
  field :link, type: String

  search_in :year, :award, :author, :title

  ##Validation ?
  validates_presence_of :year, :author, :title
    
end
