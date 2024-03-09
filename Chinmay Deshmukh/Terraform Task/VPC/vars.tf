variable "aws_instance_type" {
  type    = string
  default = "t2.micro"

}

variable "aws_ami" {
  type    = string
  default = "ami-0440d3b780d96b29d"
}
variable "volume_size" {
  type    = number
  default = 10
}
variable "aws_db_engine" {
  type    = string
  default = "mysql"
}
variable "aws_db_engine_version" {
  type    = string
  default = "5.7"
}
variable "aws_db_instance_class" {
  type    = string
  default = "db.t2.micro"

}
variable "aws_db_master_user_password" {
  type    = string
  default = "87654321"

}
variable "aws_db_master_username" {
  type    = string
  default = "myvpc"

}

variable "aws_db_name" {
  type    = string
  default = "mydb"

}
variable "aws_db_port" {
  type    = string
  default = "3306"
}
variable "aws_db_storage_type" {
  type    = string
  default="gp2"

}
