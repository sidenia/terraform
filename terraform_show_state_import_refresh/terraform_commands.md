# TERRAFORM SHOW
===============

## terraform show plan.out 
mostra o plano de execução

## terraform show
formato facil para leitura humana do conteúdo do state.


# TERRAFORM STATE
===============
## terraform state list
lista os recursos contidos no state

## terraform state rm aws_s3_bucket.bucket_commands-1 aws_s3_bucket.bucket_commands-um
renomear o nome de um recurso

## terraform state pull
pega o state remoto atual e mostra no terminal

## terraform state pull > state.tfstate 
pega o state remoto atual e exporta pra um arquivo

## terraform state push nomedoarquivo.tfstate
subir um state local para o remoto
ex> terraform state push state.tfstate

se der um erro dizendo que o serial do remoto ta maior, mas voce precisa mandar um serial para voltar uma versao do state, pode forçar o pull com:
    - terraform state push -force state.tfstate

## terraform state replace-provider 
trocar o provider no state (após supondo que alterou na configuração do codigo)
ex: terraform state replace-provider registry.terraform.io/hashcorp/aws registry.terraform.io/hashcorp/aws-v2

## terraform rm
remove instancias do state


## terraform state show nomdorecurso
Mostra os recursos no state
ex> terraform state show aws_s3_bucket.bucket_commands-1


## terraform state rm
Se não quer que o terraform gerencie mais determinado recurso, pode remove-lo do state
ex> terraform state rm aws_s3_bucket.bucket_commands-1

## terraform providers 
mostra os providers e versoes que estao usados no codigo


# TERRAFORM IMPORT
==========================
- cada provider tem uma forma de importar recursos
AWS: terraform import aws_s3_bucket.bucket bucket-name
ex> terraform import aws_s3_bucket.bucket_commands-1 sidenia-terraform-commands-1

![terraform import](./terraform-import.png)


# TERRAFORM REFRESH
==========================
Se voce vai no managment console da aws e altera algum recurso por lá, voce pode atualizar seu state com essa alteração. 

terraform refresh

todavia esse comando só atualiza o state, mas nao adiciona as alteracoes no código.. então a utilidade dela é baixa.

