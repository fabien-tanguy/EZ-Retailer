CarrierWave.configure do |config|
  
    config.storage          = :aws                                     
    config.aws_bucket       = 'm-adw'                  

    config.aws_credentials  = {
      access_key_id: 'YOUR_ACCESS_KEY_ID',
      secret_access_key: 'YOUR_SECRET_ACCESS_KEY'
    }
end