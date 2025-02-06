module "mysql_sg" {
    source = "../terraform-aws-securitygroup"
    project_name = "expense"
    environment = "dev"
    sg_name = "mysql"
    sg_description = "created for MySQL instances in expense dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
    
    }