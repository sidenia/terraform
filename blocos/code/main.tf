// https://developer.hashicorp.com/terraform/language/settings
// estudando tipos e sintaxe de atributos para o bloco terraform

terraform {
    //////////////////////////////////////////////////////////////////////
    //Parametro required_version

    //usando versao especifica
    required_version = "1.3.0"
    required_version = "= 1.3.0"

    //condições para usar intervalo de versoes
    required_version = ">= 1.2.0, < 2.0.0"
    required_version = ">= 2.0"

    //pode rodar à partir da versão x e ir até 
    required_version = "~> 1.0.0"  // 1.0.0 <= x < 2.0.0 ou seja, até 1.0.n

    ////////////////////////////////////////////////////////////////////////
    //Parametro required_provider 
    // é possível usar mais de 1 provider ao mesmo tempo
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = ">= 3.0.0"
        }

        azurerm = {
            source = "hashicorp/azurerm"
            version = ">= 2.0.0"
        }
    }


    ////////////////////////////////////////////////////////////////////////
    // tipo de backend que vamos usar
        //configuracao especifica para cada tipo de backend que for utilizado
    backend "azurerm" {
    }
}  
