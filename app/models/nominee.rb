class Nominee
  include Mongoid::Document
  field :year, type: String
  field :award, type: String
  field :author, type: String
  field :title, type: String
  field :link, type: String

  ##Validation ?
  validates_presence_of :year, :author, :title
    
end
