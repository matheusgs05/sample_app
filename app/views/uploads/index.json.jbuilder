json.array!(@uploads) do |upload|
  json.extract! upload, :arquivo, :id_uploader, :file_name, :content_type, :binary_id, :size
  json.url upload_url(upload, format: :json)
end