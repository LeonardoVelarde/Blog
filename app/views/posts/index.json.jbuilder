json.array!(@posts) do |post|
  json.extract! post, :id, :content, :title, :likes
  json.url post_url(post, format: :json)
end
