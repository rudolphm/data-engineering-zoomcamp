variable "credentials" {
  description = "My Credentials"
  default     = "~/.gcp/testapp-f6b75-0781a9b4c75d.json"
  #ex: if you have a directory where this file is called keys with your service account json file
  #saved there as my-creds.json you could use default = "./keys/my-creds.json"
}


variable "project" {
  description = "Project"
  default     = "testapp-f6b75"
}

variable "region" {
  description = "Region"
  #Update the below to your desired region
  default     = "africa-south1-a"
}

variable "location" {
  description = "Project Location"
  #Update the below to your desired location
  default     = "ZA"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  #Update the below to what you want your dataset to be called
  default     = "testapp-f6b75"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  #Update the below to a unique bucket name
  default     = "testapp-f6b75.appspot.com"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}
