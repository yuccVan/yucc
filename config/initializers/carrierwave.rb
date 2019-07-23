CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = :AH-MwvsBkhVKR_XOe7TI5hTyswyieH475x09-vAo
  config.qiniu_secret_key    = :k5YT1bKokr--oFgLczrIv4r9Cp5EiHjgjkIRuA8H
  config.qiniu_bucket        = :yucc
  config.qiniu_bucket_domain = "pv1c4q8dr.bkt.clouddn.com"
  config.qiniu_block_size    = 4*1024*1024
  config.qiniu_protocol      = "http"
  config.qiniu_up_host       = "http://up.qiniu.com"  #选择不同的区域时，"up.qiniu.com" 不同

end