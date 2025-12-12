resource "aws_ecr_repository" "this" {
  name = var.name

  force_delete         = var.force_delete
  image_tag_mutability = var.image_tag_mutability
  tags                 = var.tags

  dynamic "image_scanning_configuration" {
    for_each = var.scan_on_push != null || var.scan_on_push != "" ? [1] : []
    content {
      scan_on_push = true
    }
  }

  encryption_configuration {
    encryption_type = var.encryption_type
    kms_key         = var.kms_key
  }
}

resource "aws_ecr_lifecycle_policy" "this" {
  count = var.lifecycle_policy != "" ? 1 : 0

  repository = aws_ecr_repository.this.name
  policy     = var.lifecycle_policy
}

resource "aws_ecr_repository_policy" "this" {
  count = var.repository_policy != "" ? 1 : 0

  repository = aws_ecr_repository.this.name
  policy     = var.repository_policy
}
