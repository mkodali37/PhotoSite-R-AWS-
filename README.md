# Photo Site

A demonstration of Ruby on Rails photo site based on Amazon EC2 and S3.

## Environment

* Docker 20.10.2

## Installation

### Create an Amazon S3 Bucket

Login Amazon account and create a S3 bucket. Upload the images to the bucket and place in to direction ```/assets/images```.

### Create an Amazon EC2 Instance

Login Amazon account and create an EC2 instance of Ubuntu Server 20.04 LTS (HVM). 

### Install Docker

Connect to the instance. The command would like following form.

    ssh -i <.pem-file-name> <user>@<DNS-of-EC2-instance>

As we choose Ubuntu instance, see [here](https://docs.docker.com/engine/install/ubuntu/) and complete the installation.

### Set Environment Variables

The Photo Site needs following environment variables for accessing Amazon S3 service

* AWS_BUCKET_NAME
* AWS_REGION
* AWS_ACCESS_KEY_ID
* AWS_SECRET_ACCESS_KEY

The following step pass those environment variables with environment file.

### Run Docker Image

If the environment variables are in a .env file, run

    docker run -dp 3000:3000 --env-file <path-to-env-file> ysu19/photo-site

Alternatively, pass each of them with flags ```-e <identifier>=<data>``` respectively.

Eventually, the Photo Site is accessible the public IPv4 DNS of the EC2 instance at port 3000.    

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

# Author

Su, Yeh-Tarn - yehtarnsu@gmail.com