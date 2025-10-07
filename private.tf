resource "aws_subnet" "eks_subnet_private_1a" {
  vpc_id            = aws_vpc.eks_vpc.id #trocar o aws_vpc.main.id main pelo nome da vpc
  cidr_block        = cidrsubnet(var.cidr_block, 8, 3)
  availability_zone = "${data.aws_region.current.region}a"


  tags = merge(
    local.tags,
    {
      Name                              = "comunidadedevops-priv-subnet-1a"
      "kubernetes.io/role/internal-elb" = 1
    }
  )


}
resource "aws_subnet" "eks_subnet_private_1b" {
  vpc_id            = aws_vpc.eks_vpc.id #trocar o aws_vpc.main.id main pelo nome da vpc
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone = "${data.aws_region.current.region}b"

  tags = merge(
    local.tags,
    {
      Name                              = "comunidadedevops-priv-subnet-1b"
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}