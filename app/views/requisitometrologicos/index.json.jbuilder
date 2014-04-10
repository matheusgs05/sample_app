json.array!(@requisitometrologicos) do |requisitometrologico|
  json.extract! requisitometrologico, :nome_do_requisito, :valor_do_requisito, :filename, :content_type, :binary_id, :size
  json.url requisitometrologico_url(requisitometrologico, format: :json)
end