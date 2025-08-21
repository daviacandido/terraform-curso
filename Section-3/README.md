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

Tudo foi feito em **um único código de Terraform**, permitindo a configuração centralizada dos dois *backends*.  

---

> ⚠️ Este estudo está em andamento, mas já consolida a diferença prática entre **local state** e **remote state**, além de preparar a base para projetos colaborativos.
