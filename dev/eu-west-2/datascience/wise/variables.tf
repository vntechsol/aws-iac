variable "additional_tags" {
  description = "add extra tags"
  type        = map(string)
  default     = {}
}

variable "config" {
  type = object({
    s3_bucket = object({
      enabled        = bool
      s3_bucket_name = string
    })
  })
}