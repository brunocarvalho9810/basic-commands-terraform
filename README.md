# Comandos Terraform

Este repositório contém os materiais e exemplos utilizando Terraform.

## Estrutura do Repositório

- [Pasta sec3-terraform-basico](./sec3-terraform-basico): Contém exemplos de comandos básicos em Terraform.
  - **Variáveis:** Exemplos de como usar variáveis em Terraform para tornar seus arquivos de configuração mais dinâmicos e reutilizáveis.
  - **Locals:** Demonstração de como usar locals para declarar valores intermediários em seus arquivos de configuração, facilitando a manutenção e legibilidade do código.
  - **Outputs:** Exemplos de como declarar e usar outputs em Terraform para expor informações sobre sua infraestrutura após a aplicação das configurações.
  - **Interpolação:** Explicações sobre como utilizar a interpolação em Terraform para referenciar valores de variáveis e recursos em outros lugares do código.
  - **TFState:** Informações sobre o estado do Terraform (tfstate) e como ele é utilizado para armazenar informações sobre a infraestrutura provisionada.

- [Pasta sec4-terraform-intermediario](./sec4-terraform-intermediario): Contém exemplos de comandos intermediários em Terraform.
  - **Remote State S3:** Exemplos de como configurar o armazenamento remoto do estado do Terraform no Amazon S3.
  - **Built-in Functions:** Demonstração das funções integradas do Terraform e como utilizá-las para manipular e transformar dados.
  - **Data Sources:** Explicações sobre como usar data sources em Terraform para importar informações de recursos existentes em provedores de nuvem ou outras fontes.
  - **Foreach, For, Splat Operator:** Exemplos de como usar estas funcionalidades para iterar sobre elementos e criar recursos de forma dinâmica em Terraform.
  - **Modules:** Informações sobre como organizar e reutilizar código em Terraform usando módulos.
  - **Workspaces:** Explicações sobre como usar workspaces em Terraform para gerenciar múltiplos ambientes, como desenvolvimento, staging e produção.

## Como Usar

Para utilizar os exemplos deste repositório e aplicar os conceitos aprendidos no curso, siga os passos abaixo:

1. **Configurar Credenciais da AWS:**
   - Antes de começar, certifique-se de ter as credenciais da AWS configuradas em sua máquina. Você pode fazer isso configurando as variáveis de ambiente `AWS_ACCESS_KEY_ID` e `AWS_SECRET_ACCESS_KEY`, ou utilizando o arquivo de configuração `~/.aws/credentials`.

2. **Clonar o Repositório:**
   - Clone este repositório em sua máquina local usando o comando:
     ```
     git clone https://github.com/brunocarvalho9810/commands-terraform
     ```

3. **Explorar as Pastas:**
   - Navegue pelas pastas `/sec3-terraform-basico` e `/sec4-terraform-intermediario` para encontrar exemplos de comandos básicos e intermediários em Terraform, respectivamente.

4. **Executar os Comandos do Terraform:**
   - Para cada pasta, execute os seguintes comandos do Terraform para aplicar as configurações:
     - `terraform init`: Inicializa o diretório do Terraform, baixando os plugins necessários.
     - `terraform plan`: Gera um plano de execução mostrando as alterações que serão feitas na infraestrutura.
     - `terraform apply`: Aplica as alterações definidas nos arquivos do Terraform para provisionar ou alterar a infraestrutura.
     - `terraform destroy`: Remove a infraestrutura provisionada de acordo com as definições do Terraform.

5. **Personalizar e Experimentar:**
   - Personalize os exemplos conforme necessário e experimente diferentes configurações para entender melhor como o Terraform funciona.

## Recursos Adicionais

Além dos exemplos neste repositório, você pode encontrar mais informações sobre Terraform na [documentação oficial do Terraform](https://www.terraform.io/docs/index.html).

## Contribuições

Contribuições são bem-vindas! Se você encontrar algum problema nos exemplos ou tiver sugestões de melhorias, sinta-se à vontade para abrir uma issue ou enviar um pull request.

## Autor

[Bruno Carvalho](https://github.com/brunocarvalho9810/)
