json.extract! article, :id, :title, :article_body, :image_url, :created_at, :updated_at
json.url article_url(article, format: :json)
