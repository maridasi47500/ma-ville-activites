json.extract! document, :id, :user_id, :mydocument, :title, :filename, :created_at, :updated_at
json.url document_url(document, format: :json)
