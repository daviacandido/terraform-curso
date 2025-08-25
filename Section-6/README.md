# Section-6 - Meta Arguments no Terraform

Nesta seção estou estudando sobre os **Meta Arguments** no Terraform, entendendo seus tipos, aplicações práticas e em quais blocos eles podem ser utilizados.

---

## Meta Arguments em **Resources**

Os **Meta Arguments** que podem ser aplicados a recursos são:

- **depends_on** → define dependências explícitas entre recursos.
- **count** → cria múltiplas instâncias de um recurso com base em um número.
- **for_each** → cria múltiplas instâncias de um recurso a partir de um mapa ou conjunto.
- **provider** → especifica qual provedor será utilizado para aquele recurso.
- **lifecycle** → controla o ciclo de vida do recurso (ex.: `create_before_destroy`, `prevent_destroy`).

---

## Meta Arguments em **Modules**

Os **Meta Arguments** que podem ser aplicados a módulos são:

- **depends_on** → define dependências explícitas entre módulos.
- **count** → cria múltiplas instâncias de um módulo com base em um número.
- **for_each** → cria múltiplas instâncias de um módulo a partir de um mapa ou conjunto.
- **provider** → especifica qual provedor será utilizado para aquele módulo.

---