# Photo Site

A demonstration of Ruby on Rails photo site based on Amazon EC2 and S3.

## Environment

* Ruby version 2.7.2
* Rails 6.1.1

## Configuration

Inorder to apply Amazon s3 service, the amazon credentials needs to be placed at ```~/.aws/credentials```. The needed information are:
1. aws_access_key_id
2. aws_secret_access_key

## Database Models

### User

* ```first_name```: ```string``` The first name of a user.
* ```last_name```: ```string``` The last name of a user.
* May has many Photos.
* May has many comments.

### Photo

* ```date_time```: ```date``` The created date of a photo.
* ```file_name```: ```string``` The file name of a photo.
* Must belongs to a specific user.

### Comments

* ```date_time```: ```date``` The created date of a comment.
* ```comment_text```: ```string``` The content of a comment.
* Must belongs to a specific user.
* Must belongs to a specific photo.

## To do

* Routes setting
* Views arrangement
* Amazon-s3-related configuration
* DockerFile aggregation


Attributes
* ```date_time```: ```date``` The created date of a comment.
* ```comment_text```: ```string``` The content of a comment.

# Author

Su, Yeh-Tarn - yehtarnsu@gmail.com