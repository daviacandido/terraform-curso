# Section-4 - Provisioners no Terraform

Nesta seção estudei o uso de **Provisioners** no Terraform, entendendo suas funcionalidades, limitações e alternativas recomendadas.

---

## O que são Provisioners?

Provisioners são usados para executar scripts ou comandos **após** a criação de um recurso.
Podem ser úteis em alguns cenários específicos, mas **a própria documentação oficial do Terraform recomenda que sejam utilizados apenas em última instância**, não como primeira opção.

---

## Provisioners estudados

Durante esta seção, foram explorados os seguintes provisioners:

- **provisioner "file"**
  - Uso com `content` → cria um arquivo diretamente com o conteúdo especificado.
  - Uso com `source` → copia um arquivo local para dentro da VM provisionada.

- **provisioner "remote-exec"**
  Executa comandos dentro da VM provisionada via conexão SSH ou WinRM.

- **provisioner "local-exec"**
  Executa comandos no computador local de onde o Terraform está sendo executado.

- **connection**
  Bloco usado para definir como o Terraform acessa a VM (ex.: via SSH na AWS/Azure).

---

## Recursos provisionados

Para praticar os provisioners, foram criadas máquinas virtuais em ambas as nuvens:

- **AWS** → criada uma **EC2 (AVM)** utilizando provisioners.
- **Azure** → criada uma **Linux Virtual Machine** utilizando provisioners.

---

## Boas práticas: alternativas aos Provisioners

Segundo a documentação oficial do Terraform, **provisioners devem ser usados apenas em casos excepcionais**.
A recomendação é dar preferência a mecanismos nativos das nuvens para inicialização de VMs.

Por isso, também foram estudados:

- **user_data (AWS)**
  - Permite passar instruções de inicialização ao criar uma **EC2 Instance**.
  - Foi utilizado um **[script criado por mim](./vm-aws-user-data/docs/script.sh)** que sobe o Docker e executa um container com a imagem do **NGINX**.

- **custom_data (Azure)**
  - Permite passar instruções de inicialização ao criar uma **Virtual Machine**.
  - Foi utilizado o **mesmo script**, localizado em [./vm-azure-custom-data/docs/script.sh](./vm-azure-custom-data/docs/script.sh).

Assim, tanto no `user_data` (AWS) quanto no `custom_data` (Azure) o processo de inicialização da VM executa o mesmo provisionamento, apenas mudando o diretório em que o script está armazenado.

---

> ⚠️ Este estudo mostrou como usar provisioners na prática, mas reforçou que a abordagem ideal é sempre priorizar **user_data** (AWS) e **custom_data** (Azure), evitando depender de provisioners como solução padrão.
