# terraform

#### 1. Executando o container terraform
```
docker run --name terraform -it -v $PWD:app -w /app --entrypoint "" hashicorp/terraform:light sh
```
 
#### 2. Usar as variaveis de ambiente no container com os acessos da AWS do usuário de acesso ao bucket S3 (Por segurança não coloquei no comando acima os dados de acesso)
```
export AWS_ACCESS_KEY_ID='id do usuario'
export AWS_SECRET_ACCESS_KEY='chave de acesso usuário'
```

#### 3. Acesse o container e execute os comandos abaixo
```
terraform init -upgrade
terraform plan -out one
terraform apply file
```
  - terraform init = Faz a conexão com a aws atraves do arquivo main.tf onde:
    - bucket: Nome do seu bucket criado na aws
    - key: Chave do bucket
    - region: Região do bucket
  - terraform plan -out file = Cria o arquivo de configuração q sera provisionada na aws, com base no arquivo 'ec2.tf' OBS: 'file' pode ser qualquer nom
    - Arquivo ec2.tf:
      - count: Numero de máquinas a serem criadas
      - ami: Id da instancia a ser criada, no caso o Ubuntu
      - instance_type: Shape da máquina
      - tags.name: Nome da máquina
  - terraform apply file = Comando para provisionar



