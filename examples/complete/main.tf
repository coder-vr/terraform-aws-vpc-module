module "vpc" {
  source = "./module/vpc"

  vpc_config = {
    cidr_block = "10.0.0.0/24"
    name       = "test-vpc"
  }

  subnet_config = {
    public_subnet-1 = {
      cidr_block = "10.0.0.0/26"
      az         = "ap-south-1a"
      public     = true
    }
    public_subnet-2 = {
      cidr_block = "10.0.0.64/26"
      az         = "ap-south-1a"
      public     = true
    }
    private_subnet = {
      cidr_block = "10.0.0.128/26"
      az         = "ap-south-1b"
    }
  }
}
