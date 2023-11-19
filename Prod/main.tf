module "prod_vpc"{
  source = github.com/idfaiz1495/modules-aws.git/vpc
  vpc_cidr ="30.0.0.0/16"
  tenancy="prod"
  vpc_id = "${module.vpc.vpc_id}"
  subnet_cidr="30.0.0.0/24"
}

module "myEc2" {
  source = github.com/idfaiz1495/modules-aws.git/ec2
  ec2_count=1
  instance_type="t2.micro"
  subnet_id=${module.vpc.subnet_id}cd prodcount = 
}