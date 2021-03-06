class Journal
  include Mongoid::Document
  include Mongoid::Search
  field :id, type: Integer
  field :entry_for, type: String
  field :am_glucose, type: Integer
  field :pm_glucose, type: Integer
  field :weight, type: Float
  field :systolic, type: Integer
  field :diastolic, type: Integer
  field :body_fat, type: Float
  field :energy, type: Integer
  field :motivation, type: Integer
  field :happiness, type: Integer
  field :details, type: String
  field :goals, type: String
  field :notes, type: String
  field :created_at, type: Time
  field :updated_at, type: Time
  field :meditation, type: Integer
  field :yoga, type: Integer
  field :curls, type: Integer
  field :kettlebells, type: Integer
  field :pushups, type: Integer
  field :situps, type: Integer
  field :eliptical_time, type: Integer
  field :eliptical_dist, type: Float
  field :title, type: String

  search_in :notes

  def self.search(q)
      Journal.where({ :$text => { :$search => q, :$language => "none"}})
  end 

end

#rails g journal id:integer  entry_for:datetime am_glucose:integer pm_glucose:integer weight:float systolic:integer diastolic:integer body_fat:float  energy:integer   motivation:integer happiness:integer  details:text goals:text notes:text  created_at:datetime updated_at:datetime