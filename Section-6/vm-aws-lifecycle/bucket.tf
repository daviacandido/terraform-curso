resource "aws_s3_bucket" "bucket" {
  bucket = "davicandido-fterraform-lifecycle-test" # Nome do bucket S3 a ser criado.

  lifecycle {
    create_before_destroy = true # Garante que um novo bucket seja criado antes de destruir o antigo.
    ignore_changes        = [tags] # Ignora mudanças na tag para evitar recriações desnecessárias.
  }

  tags = {
    test = "vscode"
  }
}