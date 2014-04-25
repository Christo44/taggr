json.array!(@sharelinks) do |sharelink|
  json.extract! sharelink, :id, :link, :comment
  json.url sharelink_url(sharelink, format: :json)
end
