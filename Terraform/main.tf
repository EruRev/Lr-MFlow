terraform {
  required_version = ">= 1.1.0"

  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~> 0.80"
    }
  }
}

provider "yandex" {
  cloud_id  = "b1gh60e34t3v9rfv392i"
  folder_id = "b1gkuenq9qo6101ubolq"
  token     = "y0__xCroMG2BBjB3RMg75a8pxNTWoMtbdx-iwKNdnktnXVzwbJAUg"
}

resource "yandex_storage_bucket" "s3_bucket" {
  bucket = "my-s3-bucket"
  location = "ru-central1-b"
  acl    = "private"
}