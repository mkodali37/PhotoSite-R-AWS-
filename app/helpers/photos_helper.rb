require 'aws-sdk-s3'
module PhotosHelper
  def image_public_url(file_name)
    key = File.join('assets/images/', file_name)
    obj = Aws::S3::Object.new(
      bucket_name: ENV['aws_bucket_name'],
      key: key,
      region: ENV['aws_region'])
    obj.public_url
  end
end
