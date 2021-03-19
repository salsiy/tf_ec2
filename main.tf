
module "ec2_cluster" {
  source                 = "git::https://github.com/siyadsalam/terraform-aws-ec2-instance.git"

  providers = {
    aws = aws.region-worker
  }

  name                   = "my-cluster"
  instance_count         = 1
  ami                    = "ami-08962a4068733a2b6"
  instance_type          = "t2.micro"
  key_name               = "poweruser"
  monitoring             = true
  vpc_security_group_ids = ["sg-061072691f4b09737"]
  subnet_id              = "subnet-666e8f1b"
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}