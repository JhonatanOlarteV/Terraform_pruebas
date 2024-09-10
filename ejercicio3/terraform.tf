resource "aws_s3_bucket" "proveedores" {
    count = 6
    bucket = "proveedores-regional-jhonatanolarte-${random_string.sufijo[count.index].id}"
    tags = {
      Owner = "240Cross"
      Environmet = "Dev"
      Office = "Bosa"
    }
}