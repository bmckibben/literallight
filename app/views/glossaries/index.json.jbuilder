json.array!(@glossaries) do |glossary|
  json.extract! glossary, :id, :id, :word, :definition, :display, :created_at, :updated_at
  json.url glossary_url(glossary, format: :json)
end
