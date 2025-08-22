# Estudos com Terraform

Este repositório contém meus estudos sobre **Terraform**, realizados de forma **teórica e prática**.
O aprendizado ainda está **em andamento**, sendo atualizado conforme avanço nas seções.

---

## Estrutura

- **[Section-1](./Section-1)**
  Primeira parte dos estudos, onde estão os seguintes conteúdos:
  1. [Sintaxe padrão do arquivo **HCL** do Terraform](./Section-1/sintaxe-terraform)
  2. [Criação de um **bucket S3** na prática](./Section-1/config-bloco-terraform)

  > 📌 Detalhes e comandos utilizados podem ser encontrados no arquivo
  > [README da Section-1/config-bloco-terraform](./Section-1/config-bloco-terraform/README.md)

---

- **[Section-2](./Section-2)**
  Segunda parte dos estudos, focada na **criação de um Storage Account na Azure**, recurso equivalente a um **Bucket S3 na AWS**.

  Nesta seção foram estudados:
  1. Estrutura do recurso na Azure (Resource Group > Storage Account > Container).
  2. Uso de **variables** para parametrizar valores no Terraform.
  3. Uso de **locals** para definir valores reutilizáveis.
  4. Uso de **output** para expor informações após a execução do plano.

  > 📌 Um diagrama explicativo sobre a criação do Storage Account pode ser encontrado em
  > [assets/how-it-works.jpg](./Section-2/assets/how-it-works.jpg)

---

- **[Section-3](./Section-3)**
  Terceira parte dos estudos, focada na diferença entre **local state** e **remote state** no Terraform.

  Nesta seção foram estudados:
  1. Diferença entre **Local State** e **Remote State**.
  2. Criação de um **S3 Bucket** na AWS para armazenar *remote state* de projetos AWS.
  3. Criação de um **Storage Account** na Azure para armazenar *remote state* de projetos Azure.
  4. Implementação prática de rede:
     - **AWS**: criação de **VPC**, **Subnet**, **Internet Gateway**, **Route Table**, **Route Table Association** e **Security Group**.
     - **Azure**: criação de **VNet** utilizando o *remote state* no Storage Account.
  5. Criação de **máquinas virtuais**:
     - **AWS**: uso de **Key Pair** e criação de uma instância **EC2**.
     - **Azure**: uso de **Resource Group**, **Public IP**, **Network Interface**, associação a **NSG** e criação de uma **Linux Virtual Machine**.
  6. Estudo de **comandos avançados do Terraform**:
     - `terraform show` → exibe o estado atual da infraestrutura.
     - `terraform state` → manipula o *state* (listar, mover, remover recursos).
     - `terraform import` / `terraform refresh` → importa recursos existentes e sincroniza o *state*.
     - `terraform init -reconfigure / -migrate-state / -backend-config` → gerencia reconfiguração e migração do backend.
     - `terraform force-unlock` → desbloqueia manualmente um *state* remoto travado.
     - `terraform plan -generate-config-out` → gera configurações sugeridas para recursos detectados.

  > 📌 Detalhes podem ser encontrados no arquivo
  > [README da Section-3](./Section-3/README.md)

---

Mais seções serão adicionadas conforme o progresso dos estudos.