class Nominee
  include Mongoid::Document
  field :year, type: String
  field :award, type: String
  field :author, type: String
  field :title, type: String
  field :link, type: String

# index({ year: 1 }, { database: "users", unique: true, background: true })
 index(
   { "$**" => "text" }
 )

  ##Validation ?
  validates_presence_of :year, :author, :title
    
end
