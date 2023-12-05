    resource "aws_instance" "Viswa" {
        ami = var.ami_id
        instance_type = var.instance_type 
        
       
        tags = var.instances
    }