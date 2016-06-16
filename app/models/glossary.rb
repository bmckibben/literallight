class Glossary
  include Mongoid::Document
  field :id, type: Integer
  field :word, type: String
  field :definition, type: String
  field :display, type: Integer
  field :created_at, type: Time
  field :updated_at, type: Time
end
