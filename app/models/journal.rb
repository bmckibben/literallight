class Journal
  include Mongoid::Document
  field :id, type: Integer
  field :entry_for, type: Time
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
end
