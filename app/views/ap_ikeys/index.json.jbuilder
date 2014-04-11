json.array!(@ap_ikeys) do |ap_ikey|
  json.extract! ap_ikey, :id, :key, :user_id
  json.url ap_ikey_url(ap_ikey, format: :json)
end
