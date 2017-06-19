json.extract! image_attachment, :id, :house_id, :avatar, :created_at, :updated_at
json.url image_attachment_url(image_attachment, format: :json)