terraform {
    required_providers {
        aws = {
            version = "~> 3.0"
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
    region = "us-west-2"
}

//criar os recursos 
resource "aws_instance" "name"{
    ami = "value"
    instance_type = "value"
    tags = {
        Name = "value"
    }
}

//esse bloco serve para pegar uma informacao de fora do codigo terraform para ser usada no codigo
data "aws_ami" "name"{
    most_recent = true
    owners = ["value"]
    filter {
        name = "value"
        values = ["value"]
    }
}

// ex: modulo lambda
module "name" {
    source = "path"
}

variable "name" {
    type = string
    default = "value"
}

//colocar para fora do codigo terraform uma info gerada no código terraform, ex> usar algo do código numa pipeline
output "name" {
    value = "value"
}

//definirmos funções do código ou funções com frequencias / ou variaveis locais, porcoes de codigo de reuso
locals {
    name = "value"
}