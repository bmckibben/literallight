class Glossary
  include Mongoid::Document
  field :id, type: Int
  field :word, type: String
  field :definition, type: String
  field :display, type: Int
  field :created_at, type: Time
  field :updated_at, type: Time
end
