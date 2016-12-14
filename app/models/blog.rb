class Blog
  include Mongoid::Document
  self.instance_variable_set(:@collection_name, "journals")
  
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
end

#  rails g scaffold blog id:Integer entry_for:String am_glucose:Integer pm_glucose:Integer weight:Float systolic:Integer diastolic:Integer body_fat:Float energy:Integer motivation:Integer happiness:Integer details:String goals:String notes:String created_at:Time updated_at:Time meditation:Integer yoga:Integer curls:Integer kettlebells:Integer pushups:Integer situps:Integer eliptical_time:Integer eliptical_dist:Float