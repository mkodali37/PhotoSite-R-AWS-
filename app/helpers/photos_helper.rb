require 'aws-sdk-s3'
module PhotosHelper
  def image_public_url(file_name)
    key = File.join('assets/images/', file_name)
    obj = Aws::S3::Object.new(
      bucket_name: ENV['AWS_BUCKET_NAME'],
      key: key,
      region: ENV['AWS_REGION'])
    obj.public_url
  end
end
