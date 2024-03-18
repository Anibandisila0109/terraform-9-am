data "aws_ami" "amzlinux" {
    most_recent = true
    owners = ["amazon"]

    filter {
      name = "name"
      values = ["amzn2-ami-hvm-*-gp2"]

    }
     filter {
       name = "root-device-type"
       values = ["ebs"]
     }
    filter {
        name = "virtualization-type"
        values = ["hvm"]
     
   }
}
 data "aws_security_group" "dev"  {
   id = "sg-0da2a8fd883283108"

}  

 data "aws_subnet" "dev" {
    id = "subnet-07f15dfa8e613cca5"

 }
