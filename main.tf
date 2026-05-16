locals {
    common_tags = merge(
        {
            Project = var.project_name
            Environment = var.environment
            ManagedBy = "Bipanshu"
        },
        var.tags
    ) 
}

module "s3_bucket" {
    source = "./modules/s3-bucket"
    
    bucket_name = var.bucket_name
    enable_versioning = var.enable_versioning
    force_destroy = var.force_destroy
    tags = local.common_tags
}