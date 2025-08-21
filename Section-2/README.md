# Section-2 - Criação de Storage Account na Azure

Nesta seção estou estudando a criação de um **Storage Account** na **Azure Cloud**, que pode ser comparado a um **Bucket S3 na AWS**.  

---

## Conteúdos estudados

- Conceitos práticos de criação de um **Storage Account** na Azure.  
- Uso de **variables** para parametrizar valores no Terraform.  
- Uso de **locals** para definir valores reutilizáveis.  
- Uso de **output** para expor informações após a execução do plano.  

---

## Estrutura do recurso

A criação do Storage Account envolve os seguintes componentes:  
1. **Resource Group** – agrupador lógico de recursos na Azure.  
2. **Storage Account** – a conta de armazenamento em si.  
3. **Container** – onde os objetos/arquivos são armazenados dentro do Storage Account.  

---

## Como funciona

Abaixo está um diagrama ilustrativo do processo:  

![Como funciona](./assets/how-it-works.jpg)  

---

### Comandos usados para subir o Storage Account no Azure Cloud

1. **terraform init**  
   Inicializa o diretório de trabalho, baixa os plugins dos provedores e prepara o ambiente para uso do Terraform.  

2. **terraform validate**  
   Valida a configuração, verificando se a sintaxe está correta e se os arquivos do Terraform são válidos.  

3. **terraform fmt**  
   Formata automaticamente os arquivos `.tf` para seguir o padrão de estilo recomendado pelo Terraform.  

4. **terraform plan -out plan.out**  
   Gera um plano de execução e salva no arquivo `plan.out`, mostrando o que será criado, alterado ou destruído.  

5. **terraform apply plan.out**  
   Aplica o plano salvo no `plan.out`, criando o Storage Account no Azure Cloud.  


### Para exclusão do bucket na Azure

1. **terraform plan -out plan.out -destroy**  
   Gera um plano de execução para destruir a infraestrutura criada, salvando no `plan.out`.  

2. **terraform apply plan.out**  
   Aplica o plano salvo no `plan.out`, removendo o RG, storage account e container do Azure Cloud.  
