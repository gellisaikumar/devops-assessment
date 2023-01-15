resource "aws_s3_object" "object-upload-html" {
    for_each        = fileset("website_pages/", "*.html")
    bucket          = data.aws_s3_bucket.selected-bucket.bucket
    key             = each.value
    source          = "website_pages/${each.value}"
    content_type    = "text/html"
    etag            = filemd5("website_pages/${each.value}")
    acl             = "public-read"
}

resource "aws_s3_object" "object-upload-jpg" {
    for_each        = fileset("website_pages/", "*.jpeg")
    bucket          = data.aws_s3_bucket.selected-bucket.bucket
    key             = each.value
    source          = "website_pages/${each.value}"
    content_type    = "image/jpeg"
    etag            = filemd5("website_pages/${each.value}")
    acl             = "public-read"
}
