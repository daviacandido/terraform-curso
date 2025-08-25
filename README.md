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
  7. Estudo de **blocos do Terraform**:
     - **moved** → indica que um recurso foi renomeado/movido, evitando recriação desnecessária.
     - **removed** → remove um recurso do *state* quando foi excluído do código.
     - **import** → importa recursos existentes para o código HCL, permitindo que sejam gerenciados pelo Terraform.

  > 📌 Detalhes podem ser encontrados no arquivo
  > [README da Section-3](./Section-3/README.md)

---

- **[Section-4](./Section-4)**
  Quarta parte dos estudos, focada em **Provisioners** no Terraform.

  Nesta seção foram estudados:
  1. Uso de **provisioner "file"** com `content` e `source`.
  2. Uso de **provisioner "remote-exec"**.
  3. Uso de **provisioner "local-exec"**.
  4. Configuração de **connection** para acesso às VMs.
  5. Criação de **VMs** em ambas as nuvens:
     - **AWS**: EC2 (AVM) criada utilizando provisioners.
     - **Azure**: Linux Virtual Machine criada utilizando provisioners.
  6. Boas práticas — alternativas aos provisioners:
     - **user_data (AWS)** → utilizado com um [script próprio](./Section-4/vm-aws-user-data/docs/script.sh) que instala Docker e sobe um container NGINX.
     - **custom_data (Azure)** → utilizado com o **mesmo script**, localizado em [./Section-4/vm-azure-custom-data/docs/script.sh](./Section-4/vm-azure-custom-data/docs/script.sh).

  > 📌 Detalhes podem ser encontrados no arquivo
  > [README da Section-4](./Section-4/README.md)

---

- **[Section-5](./Section-5)**
  Quinta parte dos estudos, focada em **Módulos no Terraform**.

  Nesta seção foram estudados:
  1. Boas práticas — ao usar módulos remotos, **sempre especificar a versão** do módulo remoto.
  2. **Módulos locais (AWS):** criado um módulo próprio para **network e VPC**, sem reutilizar a VPC criada na *Section-3*.
  3. **Módulos remotos (Azure):** utilizado o módulo remoto **network**, que cria a **VNet** e as **subnets**.
     - Esse módulo pode usar `subnet_count` ou `subnet_for_each`.
     - Neste estudo, foi utilizado o **for_each**.

  > 📌 Detalhes podem ser encontrados no arquivo
  > [README da Section-5](./Section-5/README.md)

---

- **[Section-6](./Section-6)**
  Sexta parte dos estudos, focada em **Meta Arguments** no Terraform.

  Nesta seção estão sendo estudados:
  - **Em Resources:** `depends_on`, `count`, `for_each`, `provider`, `lifecycle`.
  - **Em Modules:** `depends_on`, `count`, `for_each`, `provider`.

  > 📌 Detalhes podem ser encontrados no arquivo
  > [README da Section-6](./Section-6/README.md)

---

- **[Section-7](./Section-7)**
  Sétima parte dos estudos, focada em **funções e expressões no Terraform**.

  Nesta seção foram estudados:
  1. **For expressions**
  2. **Splat expressions**
  3. **Dynamic blocks**
  4. **Comando terraform console**
  5. **Built-in functions**

  > 📌 Detalhes podem ser encontrados no arquivo
  > [README da Section-7](./Section-7/README.md)

  ---

Mais seções serão adicionadas conforme o progresso dos estudos.
