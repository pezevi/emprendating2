json.extract! idea_like, :id, :idea_id, :user_id, :liked, :created_at, :updated_at
json.url idea_like_url(idea_like, format: :json)
