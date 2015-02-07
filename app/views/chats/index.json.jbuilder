json.extract! @chat, :id, :message, :created_at, :updated_at

json.array!(@chats) do |chat|
  json.extract! chat, :id, :message
  json.url chat_url(chat, format: :json)
end
