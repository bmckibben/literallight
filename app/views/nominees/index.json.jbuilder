json.array!(@nominees) do |nominee|
  json.extract! nominee, :id, :year, :award, :author, :title, :link
  json.url nominee_url(nominee, format: :json)
end
