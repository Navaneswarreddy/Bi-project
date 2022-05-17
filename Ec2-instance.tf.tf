
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0022f774911c1d690"
  instance_type          = "t2.micro"
  key_name               = "bastion-host"
  monitoring             = true
  vpc_security_group_ids = ["sg-00d7b6daa3ec1344f"]
  subnet_id              = "subnet-05db94f10f481b0ca"

  tags = {
    Terraform   = "true"
    Terraform   = "false"
    Environment = "dev"
  }
}