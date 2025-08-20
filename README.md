# 🚀 Mentoria Desafio LABs 2.0 - Agosto 2025 | Desafio 02

**Serviço do Desafio:** Terraform + EC2
**Objetivo:** Lançar uma máquina de trabalho na nuvem AWS (`bia-dev`) utilizando Terraform com estado remoto, seguindo as melhores práticas de Infrastructure as Code (IaC).

## 📋 Sobre o Projeto

Este projeto é a solução para o segundo desafio da mentoria Labs 2.0, focado em implementar infraestrutura automatizada e reprodutível na AWS usando Terraform. A instância EC2 é provisionada com todas as configurações necessárias, incluindo roles de IAM, security groups e scripts de inicialização via user data. Neese proje implementmo Remote State usando S3(AWS) como backend.

Sibimos uma aplicação Bia 2025 4.2.0, Rodandoem Container(Docker).

## 🏗️ Arquitetura

O projeto provisiona os segu recursos na AWS:

- **Amazon EC2 Instance:** Uma instância Amazon Linux para ambiente de desenvolvimento.
- **Security Group:** Regras de firewall configuradas para permitir acesso SSH (porta 22) e tráfego de saída.
- **IAM Role & Instance Profile:** Permissões concedidas à instância para interagir com outros serviços AWS de forma segura.
- **Remote State Backend:** Configuração do estado do Terraform armazenado em um Amazon S3 Bucket (não criado neste código) para enable collaboration and state locking.
- **VPC Modulo AWS:**

Diagrama simplificado:
🔍 Estrutura do Projeto

bia/
├── 📁 api/                    # Backend API (Node.js + Express)
│   ├── controllers/           # Controladores da aplicação
│   ├── models/               # Modelos Sequelize
│   ├── routes/               # Definição de rotas
│   └── data/                 # Dados estáticos
├── 📁 client/                # Frontend (React + Vite)
│   ├── src/                  # Código fonte React
│   ├── public/               # Assets estáticos
│   └── package.json          # Dependências frontend
├── 📁 IaaC/                  # Infrastructure as Code
│   └── Terraform/            # Templates Terraform
├── 📁 database/              # Configurações de banco
│   └── migrations/           # Migrações Sequelize
├── 📁 scripts/               # Scripts de automação
├── 📁 analise-custos/        # Análise e otimização de custos
├── 📁 docs/                  # Documentação técnica
├── 📁 .amazonq/              # Configurações Amazon Q
├── 🐳 Dockerfile             # Container da aplicação
├── 📋 buildspec.yml          # Configuração CodeBuild
├── 🐳 compose.yml            # Docker Compose para desenvolvimento
└── 📦 package.json           # Dependências do projeto


## ⚙️ Pré-requisitos

Antes de utilizar este projeto, certifique-se de ter instalado e configurado:

- **Terraform** (> v1.0)
- **AWS CLI** configurado com credenciais válidas e permissões adequadas
- **Conta AWS** com acesso para criar recursos EC2, IAM e S3

## 🚀 Como Usar

### 1. Clone o Repositório

```bash
git clone https://github.com/crfjunior65/MentoriaDesafioLABs_2.0-Agosto-2025-Desafio-02.git
cd MentoriaDesafioLABs_2.0-Agosto-2025-Desafio-02
Na pasta Terraform(cd Terraform)

**Procedimentos Terraform:**
### 2. Inicialize o Terraform
```bash
terraform init

### 3. Realise o Plano de Execução
```bash
terraform plan -out plan.out

### 4. Aplique as Configurações
```bash
terraform apply "plan.out"

### 5. Acesse a Instância EC2
```bash
ssh -i "sua-chave.pem" ec2-user@<IP_DA_INSTANCIA>
```
### 🚀 Suba a Aplicação Bia 2025 4.2.0

### 1. Vá para o diretorio da Bia
```bash
cd bia

### 2. Suba a aplicação com Docker Compose
```bash
docker-compose up -d

### 3. Acesse a Aplicação via http:IP_PublicoInstacia:3001

### 4. Acerte o IP da API no Dockerfile
```bash
vi Dockerfile
Subistitua o endereço http://fomacao... pelo ip da Instacia, http://IpPublicoInstacia:3001

### 5. Build o Dockerfile pelo Compose
```bash
docker-compose build server

### 6. Reinicie o Container
```bash
docker-compose up -d

***Apos os Testes***

### 7. Destrua a Infraestrutura
```bash
terraform destroy -auto-approve

🧠 Conhecimentos Aplicados

    Terraform Fundamentals: init, plan, apply, destroy, output.

    Gerenciamento de Estado: Configuração de backend remoto com S3 para estado compartilhado e seguro.

    Importação de Recursos: Uso do terraform import para gerenciar infraestrutura pré-existente.

    AWS EC2: Provisionamento completo de instâncias, including security groups e key pairs.

    AWS IAM: Criação de roles e instance profiles para dar permissões à EC2.

    User Data: Utilização de scripts de inicialização para automatizar a configuração da instância.

🔐 Melhores Práticas Adotadas

    Uso de variáveis para parametrizar configurações sensíveis.

    Remote state para enable trabalho em equipe e evitar perda do estado local.

    Uso de gitignore para não versionar arquivos sensíveis como .tfstate e .tfvars.

👨‍💻 Autor

Junior Fernandes

[![Terraform](https://img.shields.io/badge/Terraform-1.0+-623CE4?logo=terraform&logoColor=white)](https://terraform.io)
[![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?logo=amazon-aws&logoColor=white)](https://aws.amazon.com)

https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white
[![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)](https://aws.amazon.com/)
[![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://docker.com/)
[![React](https://img.shields.io/badge/React-61DAFB?style=for-the-badge&logo=react&logoColor=black)](https://reactjs.org/)
[![Node.js](https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=node.js&logoColor=white)](https://nodejs.org/)
[![Terraform](https://img.shields.io/badge/Terraform-623CE4?style=for-the-badge&logo=terraform&logoColor=white)](https://terraform.io/)
---
[![CI/CD](https://github.com/seu-usuario/seu-repositorio/actions/workflows/main.yml/badge.svg)](https://github.com/seu-usuario/seu-repositorio/actions)
[![Last Commit](https://img.shields.io/github/last-commit/seu-usuario/seu-repositorio.svg)](https://github.com/seu-usuario/seu-repositorio/commits/main)
![AWS](https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)
# Infrastructure as Code Project

![Terraform](https://img.shields.io/badge/Terraform-1.5.0-623CE4.svg?logo=terraform)
![AWS](https://img.shields.io/badge/AWS-EC2%2FS3%2FRDS-FF9900.svg?logo=amazonaws)
![Ansible](https://img.shields.io/badge/Ansible-2.15-EE0000.svg?logo=ansible)
![Docker](https://img.shields.io/badge/Docker-24.0-2496ED.svg?logo=docker)

[![Terraform Validation](https://github.com/seu-usuario/iac-project/actions/workflows/terraform.yml/badge.svg)](https://github.com/seu-usuario/iac-project/actions)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Last Deployment](https://img.shields.io/badge/Last%20Deployment-2023--10--15-brightgreen.svg)](https://github.com/seu-usuario/iac-project/deployments)
---
![Bright Green](https://img.shields.io/badge/Status-Bright_Green-brightgreen.svg)
![Green](https://img.shields.io/badge/Status-Green-green.svg)
![Yellow](https://img.shields.io/badge/Status-Yellow-yellow.svg)
![Orange](https://img.shields.io/badge/Status-Orange-orange.svg)
![Red](https://img.shields.io/badge/Status-Red-red.svg)
![Blue](https://img.shields.io/badge/Status-Blue-blue.svg)
---


## 🏗️ Estrutura

```bash
.
├── terraform/
├── ansible/
├── docker/
└── kubernetes/
```

🙏 Agradecimentos

Agradeço a Deus em   Primeiro Lugar, pelas Bençãos diarias, ao mentor Henrylle Maia pela excelente didática e por promover a mentoria Desafio Labs 2.0, que é uma oportunidade invaluable para elevar nossas skills em cloud.
