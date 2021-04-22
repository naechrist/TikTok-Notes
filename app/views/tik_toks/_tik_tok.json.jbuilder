json.extract! tik_tok, :id, :description, :link, :user_id, :category_id, :favorite, :created_at, :updated_at
json.url tik_tok_url(tik_tok, format: :json)
