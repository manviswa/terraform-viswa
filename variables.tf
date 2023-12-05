variable "ami_id" {
  type = string
  default = "ami-03265a0778a880afb"

}

variable "instance_type" {
    type = string
    default = "webserver"
  
}

variable "sg_name" {
    default = "allow_all-viswa"
  
}

variable "sg_desc" {
    default = "allowing all ports"
  
}

variable "sg_cidr" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "instances" {
  type = map
  default = {
    MongoDB = "t3.medium"
    MySQL = "t3.medium"
  }
}