variable "credentials" {
  description = "My Credentials"
  default     = "../.keys/taxi-rides-ny-412407-d5f6d54a82a5.json"
  #ex: if you have a directory where this file is called keys with your service account json file
  #saved there as my-creds.json you could use default = "./keys/my-creds.json"
}

variable "project" {
  description = "Project"
  default     = "taxi-rides-ny-412407"
}

variable "region" {
  description = "Region"
  #Update the below to your desired region
  default = "australia-southeast1"
}

variable "location" {
  description = "Project Location"
  #Update the below to your desired location
  default = "US"
}

variable "bq_dataset_bronze" {
  description = "Development BigQuery dataset"
  #Update the below to what you want your dataset to be called
  default = "development_bronze"
}

variable "bq_dataset_silver" {
  description = "Development BigQuery dataset"
  #Update the below to what you want your dataset to be called
  default = "development_silver"
}

variable "bq_dataset_gold" {
  description = "Development BigQuery dataset"
  #Update the below to what you want your dataset to be called
  default = "development_gold"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  #Update the below to a unique bucket name
  default = "taxi-rides-ny-412407-data-lake-development"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}