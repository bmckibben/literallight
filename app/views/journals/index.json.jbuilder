json.array!(@journals) do |journal|
  json.extract! journal, :id, :id, :entry_for, :am_glucose, :pm_glucose, :weight, :systolic, :diastolic, :body_fat, :energy, :motivation, :happiness, :details, :goals, :notes, :created_at, :updated_at
  json.url journal_url(journal, format: :json)
end
