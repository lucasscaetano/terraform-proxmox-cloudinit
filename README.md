Este é um projeto Terraform para criação de máquinas virtuais no Proxmox VE utilizando imagem Cloud-Init.
O provider utilizado é o bpg/proxmox (v0.89.0).

A ideia do projeto é permitir a criação rápida de VMs a partir de um template já existente, facilitando a automação e otimizando tempo no provisionamento do ambiente.
## Requisitos

- Terraform instalado
- Acesso a um servidor Proxmox VE
- Template de VM já criado no Proxmox
- Token de API configurado no Proxmox

## Estrutura do projeto

├── main.tf

├── vm.tf

├── variables.tf

├── output.tf

├── vms.auto.tfvars

└── terraform.tfvars.example

## O que este projeto faz
- Cria múltiplas VMs no Proxmox a partir de um template
- Aplica configuração de CPU, memória e disco
- Injeta usuário e chave SSH via Cloud-Init
- Provisiona VMs usando `for_each`

### Descrição dos arquivos

- **main.tf**  
Configuração do provider Proxmox (bpg/proxmox) e definição dos requisitos do Terraform, incluindo endpoint e autenticação via token.

- **vm.tf**  
  Definição das máquinas virtuais e recursos (CPU, memória, disco, clone do template).

- **variables.tf**  
  Declaração das variáveis usadas no projeto.

- **output.tf**  
  Outputs gerados após a criação das VMs contendo informações importantes a respeito da máquina, como IP e MAC address.

- **vms.auto.tfvars**  
  Arquivo com a definição das VMs que serão criadas.  

- **terraform.tfvars.example**  
  Exemplo de arquivo para variáveis sensíveis, alterar o nome para terraform.tfvars ou crie outro arquivo.

 ## Fluxo de uso

1. Criar `terraform.tfvars` a partir do exemplo
2. Definir as VMs em `vms.auto.tfvars`
3. Executar `terraform init`
4. Conferir com `terraform plan`
5. Aplicar com `terraform apply`

## Remoção das VMs

Para remover todas as VMs criadas por este projeto:

```bash
terraform destroy
