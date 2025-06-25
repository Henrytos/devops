
resource "aws_s3_bucket" "s3_bucket" {
    bucket = "henry-bucket-iac"

    tags = {
        Name = "primeiro-bucket-iac"
        Iac  = true
	Teste = true
    }
}
