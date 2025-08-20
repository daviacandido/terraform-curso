## Comandos usados para subir o Bucket

1. **terraform providers**  
   Lista os provedores necessários para o projeto, mostrando quais estão sendo utilizados.  

2. **terraform init**  
   Inicializa o diretório de trabalho, baixa os plugins dos provedores e prepara o ambiente para uso do Terraform.  

3. **terraform validate**  
   Valida a configuração, verificando se a sintaxe está correta e se os arquivos do Terraform são válidos.  

4. **terraform fmt**  
   Formata automaticamente os arquivos `.tf` para seguir o padrão de estilo recomendado pelo Terraform.  

5. **terraform plan -out plan.out**  
   Gera um plano de execução e salva no arquivo `plan.out`, mostrando o que será criado, alterado ou destruído.  

6. **terraform apply plan.out**  
   Aplica o plano salvo no `plan.out`, criando o bucket na AWS.  


### Para exclusão do bucket na AWS

1. **terraform plan -out plan.out -destroy**  
   Gera um plano de execução para destruir a infraestrutura criada, salvando no `plan.out`.  

2. **terraform apply plan.out**  
   Aplica o plano salvo no `plan.out`, removendo o bucket da AWS.  