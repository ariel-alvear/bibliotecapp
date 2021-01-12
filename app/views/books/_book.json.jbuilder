json.extract! book, :id, :title, :author, :status, :given, :returned, :created_at, :updated_at
json.url book_url(book, format: :json)
