CarrierWave.configure do |config|
  
    config.storage          = :aws                                     
    config.aws_bucket       = 'adw-coop'                  

    config.aws_credentials  = {
      access_key_id: 'AKIAJUUUV3XHQOEH77HQ',
      secret_access_key: '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'
    }
end