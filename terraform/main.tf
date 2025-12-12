module "stackgen_02210549-34c3-4d2c-b3f0-937e91ca0d8e" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/product-catalog-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/product-catalog-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_08730d9a-4283-457b-a951-b38123cc9caf" {
  source               = "./modules/aws_eks_node_group"
  ami_type             = "AL2_x86_64"
  capacity_type        = null
  cluster_name         = module.stackgen_8bc6ad62-21c1-4285-a597-f5128acd34a8.id
  disk_size            = 50
  force_update_version = null
  instance_types       = ["t3.medium"]
  labels = {
    node-type = "primary"
    workload  = "general"
  }
  launch_template = []
  node_group_name = "ecommerce-nodegroup-primary"
  node_role_arn   = module.stackgen_ad6b75ed-5e1b-4706-b383-c356d93fa489.arn
  release_version = null
  remote_access   = []
  scaling_config = [{
    desired_size = 3
    max_size     = 10
    min_size     = 2
  }]
  subnet_ids = [
    module.stackgen_4c5a152a-e8e4-4696-bc6d-252c0522baad.id,
    module.stackgen_636d0fa2-67d8-42a2-b689-f08fdcf0793e.id,
    module.stackgen_1da63ad5-3d7e-4c07-a683-008b6d1b8c15.id,
  ]
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-nodegroup-primary"
    Project     = "ECommercePlatform"
  }
  taint         = []
  update_config = []
}

module "stackgen_09885060-918f-4447-9a00-303f13e1f32e" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/checkout-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/checkout-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_09bd0a65-8453-4be3-82c7-c3d6f8ecae4a" {
  source                  = "./modules/aws_subnet"
  availability_zone       = "us-east-1b"
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = false
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-public-subnet-1b"
    Project     = "ECommercePlatform"
  }
  vpc_id = module.stackgen_688e88a2-4c4c-410c-9636-5e20745cdf19.id
}

module "stackgen_0b0203e5-48f0-44c7-b970-d20c5e80950a" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/spring-app"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/spring-app"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_0ca06237-4b7d-43e7-b144-29f8dbc89d20" {
  source                = "./modules/aws_iam_role"
  assume_role_policy    = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"eks.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description           = "IAM role for EKS cluster"
  force_detach_policies = true
  inline_policy         = []
  max_session_duration  = null
  name                  = "ecommerce-eks-cluster-role"
  path                  = null
  permissions_boundary  = null
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-eks-cluster-role"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_1b407dc3-2e7b-46f5-87eb-76ae94f114f9" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/load-generator-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/load-generator-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_1b69a2c2-13d9-48f0-b329-e26934a92518" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/image-provider-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/image-provider-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_1da63ad5-3d7e-4c07-a683-008b6d1b8c15" {
  source                  = "./modules/aws_subnet"
  availability_zone       = "us-east-1c"
  cidr_block              = "10.0.13.0/24"
  map_public_ip_on_launch = false
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-private-subnet-1c"
    Project     = "ECommercePlatform"
  }
  vpc_id = module.stackgen_688e88a2-4c4c-410c-9636-5e20745cdf19.id
}

module "stackgen_2177c715-832e-4ced-9fe0-70a3f2615aa6" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/kafka-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/kafka-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_2e934eaf-1f38-493d-9f17-f4b499b65690" {
  source                      = "./modules/aws_eks_addon"
  addon_name                  = "vpc-cni"
  addon_version               = ""
  cluster_name                = module.stackgen_8bc6ad62-21c1-4285-a597-f5128acd34a8.id
  configuration_values        = null
  pod_identity_association    = []
  preserve                    = null
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = null
  service_account_role_arn    = ""
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-eks-vpc-cni"
    Project     = "ECommercePlatform"
  }
  timeouts = null
}

module "stackgen_37897dc1-f6ed-4604-b278-ede2085297c1" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/quote-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/quote-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_38258605-4d83-4fa1-8b75-28c599d08b1a" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/flagd-ui-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/flagd-ui-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_3fc5f8c0-4c15-4c2e-b0c1-d446e3dbfc1b" {
  source                      = "./modules/aws_eks_addon"
  addon_name                  = "ebs-csi-driver"
  addon_version               = ""
  cluster_name                = module.stackgen_8bc6ad62-21c1-4285-a597-f5128acd34a8.id
  configuration_values        = null
  pod_identity_association    = []
  preserve                    = null
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = null
  service_account_role_arn    = ""
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-eks-ebs-csi-driver"
    Project     = "ECommercePlatform"
  }
  timeouts = null
}

module "stackgen_47c3a1ef-3bdd-4b3b-b25f-5657ab08c55a" {
  source            = "./modules/aws_nat_gateway_with_eip"
  create_eip        = true
  eip_allocation_id = ""
  nat_gateway_name  = "ecommerce-natgw-1b"
  subnet_id         = module.stackgen_09bd0a65-8453-4be3-82c7-c3d6f8ecae4a.id
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-natgw-1b"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_4c5a152a-e8e4-4696-bc6d-252c0522baad" {
  source                  = "./modules/aws_subnet"
  availability_zone       = "us-east-1a"
  cidr_block              = "10.0.11.0/24"
  map_public_ip_on_launch = false
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-private-subnet-1a"
    Project     = "ECommercePlatform"
  }
  vpc_id = module.stackgen_688e88a2-4c4c-410c-9636-5e20745cdf19.id
}

module "stackgen_515c8401-9f06-4050-9b83-10e87d978ef9" {
  source                      = "./modules/aws_eks_addon"
  addon_name                  = "kube-proxy"
  addon_version               = ""
  cluster_name                = module.stackgen_8bc6ad62-21c1-4285-a597-f5128acd34a8.id
  configuration_values        = null
  pod_identity_association    = []
  preserve                    = null
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = null
  service_account_role_arn    = ""
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-eks-kube-proxy"
    Project     = "ECommercePlatform"
  }
  timeouts = null
}

module "stackgen_5425f776-6554-4dfc-9201-0be808d14304" {
  source      = "./modules/aws_sg"
  description = "Security group for EKS node groups"
  egress = [{
    cidr_ipv4   = "0.0.0.0/0"
    description = "Allow all outbound"
    from_port   = 22
    protocol    = "-1"
    to_port     = 33
  }]
  ingress = [{
    cidr_ipv4   = "10.0.0.0/16"
    description = "Allow all traffic from VPC (cluster SG and other nodes)"
    from_port   = 22
    protocol    = "-1"
    to_port     = 33
    }, {
    cidr_ipv4   = "10.0.0.0/16"
    description = "Allow SSH from management CIDR"
    from_port   = 22
    protocol    = "tcp"
    to_port     = 33
  }]
  name = "ecommerce-eks-nodegroup-sg"
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-eks-nodegroup-sg"
    Project     = "ECommercePlatform"
  }
  vpc_id = module.stackgen_688e88a2-4c4c-410c-9636-5e20745cdf19.id
}

module "stackgen_5bdbb574-7532-403a-a673-c893d4728533" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/frontend-proxy-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/frontend-proxy-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_601caeb1-b5e3-4267-a227-95a56adb40fc" {
  source            = "./modules/aws_nat_gateway_with_eip"
  create_eip        = true
  eip_allocation_id = ""
  nat_gateway_name  = "ecommerce-natgw-1c"
  subnet_id         = module.stackgen_c6d2a5bb-8797-45f6-9575-7d53b9e05860.id
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-natgw-1c"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_602e7872-078b-456a-8503-811d58facb21" {
  source = "./modules/aws_route_table_composite"
  name   = "ecommerce-private-rt-1a"
  routes = [{
    cidr_block  = "0.0.0.0/0"
    target_id   = "66789add-b887-42f8-bdd6-5e2fe443d8dc"
    target_type = "nat_gateway"
  }]
  subnet_ids = [
    module.stackgen_4c5a152a-e8e4-4696-bc6d-252c0522baad.id,
  ]
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-private-rt-1a"
    Project     = "ECommercePlatform"
  }
  vpc_id = module.stackgen_688e88a2-4c4c-410c-9636-5e20745cdf19.id
}

module "stackgen_636d0fa2-67d8-42a2-b689-f08fdcf0793e" {
  source                  = "./modules/aws_subnet"
  availability_zone       = "us-east-1b"
  cidr_block              = "10.0.12.0/24"
  map_public_ip_on_launch = false
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-private-subnet-1b"
    Project     = "ECommercePlatform"
  }
  vpc_id = module.stackgen_688e88a2-4c4c-410c-9636-5e20745cdf19.id
}

module "stackgen_63747a36-6f8e-41f8-958f-e4dddcda8f1c" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/flagd-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/flagd-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_66789add-b887-42f8-bdd6-5e2fe443d8dc" {
  source            = "./modules/aws_nat_gateway_with_eip"
  create_eip        = true
  eip_allocation_id = ""
  nat_gateway_name  = "ecommerce-natgw-1a"
  subnet_id         = module.stackgen_7c69ce31-e3db-4b54-95e3-36dd3d68108a.id
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-natgw-1a"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_6776b090-2d56-45c2-b07d-b4e83b251bc2" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/frontend-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/frontend-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_688e88a2-4c4c-410c-9636-5e20745cdf19" {
  source                               = "./modules/aws_vpc"
  cidr_block                           = "10.0.0.0/16"
  enable_dns_hostnames                 = true
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-vpc"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_6a340dd5-800a-45bf-a08e-141bc1e099a8" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/accounting-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/accounting-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_79cc411f-7216-4f10-86f0-e7dc04b1f0b2" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/product-catalog-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/product-catalog-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_7c69ce31-e3db-4b54-95e3-36dd3d68108a" {
  source                  = "./modules/aws_subnet"
  availability_zone       = "us-east-1a"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = false
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-public-subnet-1a"
    Project     = "ECommercePlatform"
  }
  vpc_id = module.stackgen_688e88a2-4c4c-410c-9636-5e20745cdf19.id
}

module "stackgen_864b3f98-6a71-41b5-a1fd-05fcb81ca7dd" {
  source = "./modules/aws_route_table_composite"
  name   = "ecommerce-private-rt-1b"
  routes = [{
    cidr_block  = "0.0.0.0/0"
    target_id   = "47c3a1ef-3bdd-4b3b-b25f-5657ab08c55a"
    target_type = "nat_gateway"
  }]
  subnet_ids = [
    module.stackgen_636d0fa2-67d8-42a2-b689-f08fdcf0793e.id,
  ]
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-private-rt-1b"
    Project     = "ECommercePlatform"
  }
  vpc_id = module.stackgen_688e88a2-4c4c-410c-9636-5e20745cdf19.id
}

module "stackgen_884efa58-029f-4b15-9401-a39f1928e000" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/shipping-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/shipping-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_8bc6ad62-21c1-4285-a597-f5128acd34a8" {
  source                      = "./modules/aws_eks"
  access_config               = []
  eks_version                 = null
  enabled_cluster_log_types   = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
  encryption_provider_key_arn = null
  endpoint_private_access     = true
  endpoint_public_access      = false
  kubernetes_network_config   = []
  name                        = "ecommerce-eks-cluster"
  outpost_config              = []
  public_access_cidrs         = ["0.0.0.0/0"]
  region                      = var.region
  role_arn                    = module.stackgen_0ca06237-4b7d-43e7-b144-29f8dbc89d20.arn
  security_group_ids = [
    module.stackgen_b42966ac-f41f-42e1-bbeb-65790ae1daac.security_group_id,
  ]
  subnet_ids = [
    module.stackgen_4c5a152a-e8e4-4696-bc6d-252c0522baad.id,
    module.stackgen_636d0fa2-67d8-42a2-b689-f08fdcf0793e.id,
    module.stackgen_1da63ad5-3d7e-4c07-a683-008b6d1b8c15.id,
  ]
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-eks-cluster"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_8c9706ff-9b93-461b-a778-8a125c8b4213" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/payment-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/payment-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_8d76efc3-4a80-4430-a247-c7cba9cc18d1" {
  source                      = "./modules/aws_eks_addon"
  addon_name                  = "coredns"
  addon_version               = ""
  cluster_name                = module.stackgen_8bc6ad62-21c1-4285-a597-f5128acd34a8.id
  configuration_values        = null
  pod_identity_association    = []
  preserve                    = null
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = null
  service_account_role_arn    = ""
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-eks-coredns"
    Project     = "ECommercePlatform"
  }
  timeouts = null
}

module "stackgen_986aab11-ff60-4b05-b9f4-a517c2c2294c" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/fraud-detection-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/fraud-detection-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_ad6b75ed-5e1b-4706-b383-c356d93fa489" {
  source                = "./modules/aws_iam_role"
  assume_role_policy    = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ec2.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description           = "IAM role for EKS node groups"
  force_detach_policies = true
  inline_policy         = []
  max_session_duration  = null
  name                  = "ecommerce-eks-nodegroup-role"
  path                  = null
  permissions_boundary  = null
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-eks-nodegroup-role"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_b389d962-36a3-4259-a5cf-bef47ad6e2af" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/recommendation-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/recommendation-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_b42966ac-f41f-42e1-bbeb-65790ae1daac" {
  source      = "./modules/aws_sg"
  description = "Security group for EKS cluster"
  egress = [{
    cidr_ipv4   = "0.0.0.0/0"
    description = "Allow all outbound"
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }]
  ingress = [{
    cidr_ipv4   = "10.0.0.0/16"
    description = "Allow all traffic from VPC (node group SG)"
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    }, {
    cidr_ipv4   = "10.0.0.0/16"
    description = "Allow HTTPS from node group SG"
    from_port   = 443
    protocol    = "tcp"
    to_port     = 443
  }]
  name = "ecommerce-eks-cluster-sg"
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-eks-cluster-sg"
    Project     = "ECommercePlatform"
  }
  vpc_id = module.stackgen_688e88a2-4c4c-410c-9636-5e20745cdf19.id
}

module "stackgen_bd581767-eb53-4c4f-b5ef-e185293c7268" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/currency-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/currency-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_bf7dfb43-2692-4db1-8699-0c28a83c8f02" {
  source = "./modules/aws_route_table_composite"
  name   = "ecommerce-public-rt"
  routes = [{
    cidr_block  = "0.0.0.0/0"
    target_id   = "f896311a-df5f-409c-97e4-6b1e1c7ce4cb"
    target_type = "internet_gateway"
  }]
  subnet_ids = [
    module.stackgen_7c69ce31-e3db-4b54-95e3-36dd3d68108a.id,
    module.stackgen_09bd0a65-8453-4be3-82c7-c3d6f8ecae4a.id,
    module.stackgen_c6d2a5bb-8797-45f6-9575-7d53b9e05860.id,
  ]
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-public-rt"
    Project     = "ECommercePlatform"
  }
  vpc_id = module.stackgen_688e88a2-4c4c-410c-9636-5e20745cdf19.id
}

module "stackgen_c6d2a5bb-8797-45f6-9575-7d53b9e05860" {
  source                  = "./modules/aws_subnet"
  availability_zone       = "us-east-1c"
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = false
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-public-subnet-1c"
    Project     = "ECommercePlatform"
  }
  vpc_id = module.stackgen_688e88a2-4c4c-410c-9636-5e20745cdf19.id
}

module "stackgen_cd1a0072-10f0-47d9-93f3-9420c9957ba6" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/ad-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/ad-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_d5954c42-1f31-4bb4-a5fa-d1f8fd9bdf03" {
  source            = "./modules/aws_cloudwatch_log_group"
  name              = "/aws/eks/ecommerce-eks-cluster/cluster"
  retention_in_days = 7
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "/aws/eks/ecommerce-eks-cluster/cluster"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_dc1e79ec-783a-4bad-9284-5c723c77b51a" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/valkey-cart-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/valkey-cart-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_e52f614f-4411-457b-bc03-ec3c87bb41b5" {
  source                   = "git::https://github.com/craigleander/fss.git///modules/s3?ref=main"
  acl                      = "private"
  block_public_access      = true
  block_public_acls        = true
  block_public_policy      = true
  bucket_name              = "ecommerce-eks-logs"
  control_object_ownership = true
  enable_versioning        = true
  environment              = "production"
  ignore_public_acls       = true
  lifecycle_rule           = []
  object_ownership         = "BucketOwnerPreferred"
  restrict_public_buckets  = true
  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256"
      }
    }
  }
  sse_algorithm = "aws:kms"
  versioning = {
    enabled = true
  }
}

module "stackgen_eb655e83-76b8-4100-a919-88eae14766d3" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/postgresql-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/postgresql-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_f896311a-df5f-409c-97e4-6b1e1c7ce4cb" {
  source = "./modules/aws_internet_gateway"
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-igw"
    Project     = "ECommercePlatform"
  }
  vpc_id = module.stackgen_688e88a2-4c4c-410c-9636-5e20745cdf19.id
}

module "stackgen_f903d394-a990-4d7c-b268-b76b503f4e0a" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/cart-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/cart-service"
    Project     = "ECommercePlatform"
  }
}

module "stackgen_fa24de39-1276-40ba-9963-ee428dbbfbbc" {
  source = "./modules/aws_route_table_composite"
  name   = "ecommerce-private-rt-1c"
  routes = [{
    cidr_block  = "0.0.0.0/0"
    target_id   = "601caeb1-b5e3-4267-a227-95a56adb40fc"
    target_type = "nat_gateway"
  }]
  subnet_ids = [
    module.stackgen_1da63ad5-3d7e-4c07-a683-008b6d1b8c15.id,
  ]
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "ecommerce-private-rt-1c"
    Project     = "ECommercePlatform"
  }
  vpc_id = module.stackgen_688e88a2-4c4c-410c-9636-5e20745cdf19.id
}

module "stackgen_fcfeb1e7-36f2-4c7a-bc0a-ffdad69b0f58" {
  source               = "./modules/aws_ecr"
  encryption_type      = "AES256"
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  kms_key              = null
  lifecycle_policy     = "{\"rules\":[{\"rulePriority\":1,\"description\":\"Retain last 10 images\",\"selection\":{\"tagStatus\":\"any\",\"countType\":\"imageCountMoreThan\",\"countNumber\":10},\"action\":{\"type\":\"expire\"}}]}"
  name                 = "opentelemetry-demo/email-service"
  repository_policy    = null
  scan_on_push         = true
  tags = {
    CostCenter  = "engineering"
    Environment = "production"
    ManagedBy   = "Stackgen"
    Name        = "opentelemetry-demo/email-service"
    Project     = "ECommercePlatform"
  }
}

