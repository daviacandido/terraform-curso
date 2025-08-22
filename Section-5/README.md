# Section-5 - Módulos no Terraform

Nesta seção estudei sobre **módulos no Terraform**, tanto locais quanto remotos, e as boas práticas recomendadas para seu uso.

---

## Boas práticas

No estudo foi visto que é recomendado que, ao trabalhar com **módulos remotos**, sempre seja especificada a **versão do módulo remoto** a ser usada, evitando problemas caso o módulo seja atualizado.

---

## Módulos locais — AWS

Foi criado um **módulo local** para a parte de **network e VPC**, **não** utilizando a VPC já criada anteriormente na **Section-3**.

Este módulo local ajuda a organizar melhor o código, permitindo reutilização em outros projetos.

---

## Módulos remotos — Azure

Foi utilizado um **módulo remoto** chamado **network**, que cria a **VNet** e as **subnets**.

Esse módulo oferece duas opções de configuração de subnets:
- `subnet_count`
- `subnet_for_each`

Neste estudo, foi utilizado o **for_each**, que permite maior flexibilidade na criação de múltiplas subnets.

---

## Conclusão

- **Módulos locais (AWS):** criamos um módulo específico para **network e VPC**, sem reaproveitar a VPC criada na *Section-3*.
- **Módulos remotos (Azure):** utilizamos o módulo **network**, optando pela abordagem com **for_each**.
- **Boas práticas:** sempre **fixar a versão** de módulos remotos para garantir estabilidade do código.
