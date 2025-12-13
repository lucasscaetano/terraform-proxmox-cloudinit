Este é um projeto terraform para criação de VMs proxmox utilizando uma imagem cloud init, o provider utilizado é o bpg 0.89.0, a ideia é criar VMS rapidamente a partir de um template já criado e otimizar tempo!

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
├── terraform.tfvars.example

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
