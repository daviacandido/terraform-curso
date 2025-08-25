# Section-7 - Funções e Expressões no Terraform

Nesta seção estudei sobre **funções e expressões no Terraform**, entendendo como elas podem ser aplicadas na prática para tornar o código mais dinâmico e reutilizável.

---

## Conditional Expressions

- Permitem expressar condições de forma simples, como um **if ternário**.
- Sintaxe: condition ? value_if_true : value_if_false
- Exemplo: escolher um tamanho de instância diferente conforme o ambiente.

---

## For Expressions

- Permitem iterar sobre listas ou mapas e gerar novos valores.
- Úteis para transformar ou filtrar dados antes de usá-los em recursos ou módulos.

---

## Splat Expressions

- Usadas para extrair atributos de todos os elementos em uma lista de objetos.
- Exemplo clássico: pegar os IDs de múltiplos recursos criados com `count` ou `for_each`.

---

## Dynamic Blocks

- Permitem criar blocos repetitivos dinamicamente dentro de um recurso.
- Evitam duplicação de código ao lidar com configurações que se repetem.

---

## Terraform Console

- O comando `terraform console` abre um shell interativo.
- Útil para testar expressões, funções e verificar como o Terraform interpreta valores.

---

## Built-in Functions

- O Terraform possui diversas funções internas que ajudam a manipular strings, números, listas, mapas e datas.
- Exemplos: `concat()`, `length()`, `upper()`, `lower()`, `cidrsubnet()`, `timestamp()`.

---

## Conclusão

- **Conditional expressions:** permitem lógica condicional simples.
- **For expressions:** criam coleções derivadas de outras.
- **Splat expressions:** acessam listas de atributos facilmente.
- **Dynamic blocks:** geram blocos repetidos de forma limpa.
- **Terraform console:** ambiente para testes interativos.
- **Built-in functions:** funções nativas poderosas para manipulação de dados.
