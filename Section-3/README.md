# Section-3 - Diferença entre Local State e Remote State

Nesta seção estudei a diferença entre o uso de **state local** e **state remoto** no Terraform, além da configuração prática para armazenar esse estado na **AWS** e na **Azure**.

---

## O que é o *state* no Terraform?

O *state* é o arquivo onde o Terraform guarda informações sobre os recursos que ele já criou e gerencia.
É essencial porque o Terraform usa esse arquivo para saber o que precisa **criar, atualizar ou destruir** em cada execução.

---

## Local State

- O estado fica salvo em um arquivo `terraform.tfstate` no computador local.
- Vantagens: simples de configurar, ideal para estudos ou projetos pessoais.
- Desvantagens: difícil de compartilhar entre equipes, risco de perda do arquivo ou inconsistência caso várias pessoas apliquem mudanças.

---

## Remote State

- O estado fica armazenado em um backend remoto (como S3, Azure Storage, GCS, etc.).
- Vantagens:
  - Compartilhamento entre equipes.
  - Bloqueio de concorrência (*state locking*) para evitar que duas pessoas alterem o estado ao mesmo tempo.
  - Maior segurança e confiabilidade.
- Desvantagens: requer configuração extra e permissões adequadas na nuvem.

---

## Prática realizada

Foi criado um código de Terraform que prepara a infraestrutura necessária para armazenar *remote state* em **duas nuvens diferentes**:

1. **AWS**
   - Criado um **S3 Bucket** para ser utilizado como backend remoto para os projetos que rodam na AWS.

2. **Azure**
   - Criado um **Storage Account** para ser utilizado como backend remoto para os projetos que rodam na Azure Cloud.

---

## Aplicação prática do Remote State

Além da configuração dos backends, o conceito de *remote state* foi colocado em prática com a criação de recursos reais:

- Na **AWS**, foi criada uma **VPC** utilizando o *remote state* armazenado no S3.
- Na **Azure**, foi criada uma **VNet** utilizando o *remote state* armazenado no Storage Account.

Isso permitiu validar a utilidade do estado remoto para gerenciar e versionar infraestrutura de forma colaborativa e confiável.

---

## Estudo complementar: criação de VMs

Para aprofundar ainda mais o uso do Terraform com *remote state*, foi realizado o estudo da criação de **máquinas virtuais** em ambas as nuvens:

- **AWS**
  - Uso de **Key Pair** para acesso seguro via SSH.
  - Criação de uma instância **EC2 (AWS Instance)**.

- **Azure**
  - Uso de **Resource Group** para organizar os recursos.
  - Criação de um **Public IP**.
  - Configuração de uma **Network Interface (NIC)**.
  - Associação da NIC a um **Network Security Group (NSG)**.
  - Criação de uma **Linux Virtual Machine**.

> 🔎 Observação: esses recursos de VM na Azure foram estudados apenas neste momento (e não na fase inicial de preparação do *remote state*), porque ao contrário da AWS, onde tais recursos básicos não geram custo imediato, na Azure eles poderiam incorrer em custos adicionais se criados junto ao Storage Account.

---

> ⚠️ Este estudo consolidou a diferença prática entre **local state** e **remote state**, além de demonstrar como utilizá-los em projetos reais com AWS e Azure, indo além do armazenamento de estado e avançando para a criação de **máquinas virtuais**.
