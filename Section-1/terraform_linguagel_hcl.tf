terraform {
    # Bloco principal para configurar opções globais do Terraform, como versão e backend.
}

provider "aws" {
    # Define o provedor de infraestrutura (AWS) e suas configurações, como região e credenciais.
}

resource "aws_s3_bucket" "referencia_interna_codigo" {
    # Cria um recurso gerenciado pela infraestrutura, neste caso um bucket S3 na AWS.
}

data "aws_instance" "referencia_interna_codigo" {
    # Consulta informações de um recurso já existente fora do gerenciamento do Terraform.
}

module "referencia_interna_codigo" {
    # Reutiliza código para implementar funcionalidades específicas, como redes ou segurança.
}

variable "nome_variavel" {
    # Declara variáveis para parametrizar valores e tornar o código mais flexível.
}

output "nome_output" {
    # Expõe valores gerados pelo Terraform após a execução, úteis para consulta ou integração.
}

locals {
    # Define expressões ou valores reutilizáveis, facilitando manutenção e evitando repetição.
}

import {
    # Permite importar recursos existentes para que o Terraform passe a gerenciá-los.
}

moved {
    # Atualiza referências internas de recursos, útil para renomeações ou reorganizações.
}

removed {
    # Indica que um recurso foi removido do código e não será mais gerenciado pelo Terraform    
}

check "name" {
    # Realiza verificações de conformidade ou validações específicas no código ou infraestrutura.
}
