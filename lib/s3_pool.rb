S3_POOL = ConnectionPool.new(size: 10, timeout: 5) do
  Fog::Storage.new(
    provider: "AWS",
    aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
    aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
    persistent: true,
    host: ENV['ENTRY_IMAGE_HOST'],
    endpoint: ENV['AWS_S3_ENDPOINT'],
    path_style: true,
  )
end
