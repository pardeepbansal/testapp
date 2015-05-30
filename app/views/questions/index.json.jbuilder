json.array!(@questions) do |question|
  json.extract! question, :id, :title, :a, :b, :c, :d, :e, :answer
  json.url question_url(question, format: :json)
end
