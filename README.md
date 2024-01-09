# Comandos Terraform <img src="https://raw.githubusercontent.com/brunocarvalho9810/commands-terraform/master/pt-br.png" style="height:50px; width:50px" />

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

---

# Terraform Commands <img src="https://raw.githubusercontent.com/brunocarvalho9810/commands-terraform/master/en.png" style="height:40px; width:40px" />

This repository contains materials and examples using Terraform.

## Repository Structure

- [Folder sec3-terraform-basico](./sec3-terraform-basico): Contains examples of basic commands in Terraform.
  - **Variables:** Examples of how to use variables in Terraform to make your configuration files more dynamic and reusable.
  - **Locals:** Demonstration of how to use locals to declare intermediate values in your configuration files, making code maintenance and readability easier.
  - **Outputs:** Examples of how to declare and use outputs in Terraform to expose information about your infrastructure after applying the configurations.
  - **Interpolation:** Explanations on how to use interpolation in Terraform to reference values of variables and resources elsewhere in the code.
  - **TFState:** Information about the Terraform state (tfstate) and how it is used to store information about the provisioned infrastructure.

- [Folder sec4-terraform-intermediario](./sec4-terraform-intermediario): Contains examples of intermediate commands in Terraform.
  - **Remote State S3:** Examples of how to configure remote storage of Terraform state in Amazon S3.
  - **Built-in Functions:** Demonstration of Terraform's built-in functions and how to use them to manipulate and transform data.
  - **Data Sources:** Explanations on how to use data sources in Terraform to import information from existing resources in cloud providers or other sources.
  - **Foreach, For, Splat Operator:** Examples of how to use these features to iterate over elements and dynamically create resources in Terraform.
  - **Modules:** Information on how to organize and reuse code in Terraform using modules.
  - **Workspaces:** Explanations on how to use workspaces in Terraform to manage multiple environments, such as development, staging, and production.

## How to Use

To use the examples in this repository and apply the concepts learned in the course, follow the steps below:

1. **Configure AWS Credentials:**
   - Before you start, make sure you have your AWS credentials configured on your machine. You can do this by setting the `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` environment variables, or by using the `~/.aws/credentials` configuration file.

2. **Clone the Repository:**
   - Clone this repository to your local machine using the command:
     ```
     git clone https://github.com/brunocarvalho9810/commands-terraform
     ```

3. **Explore the Folders:**
   - Navigate through the `/sec3-terraform-basico` and `/sec4-terraform-intermediario` folders to find examples of basic and intermediate Terraform commands, respectively.

4. **Execute Terraform Commands:**
   - For each folder, execute the following Terraform commands to apply the configurations:
     - `terraform init`: Initializes the Terraform directory, downloading the necessary plugins.
     - `terraform plan`: Generates an execution plan showing the changes that will be made to the infrastructure.
     - `terraform apply`: Applies the changes defined in the Terraform files to provision or alter the infrastructure.
     - `terraform destroy`: Removes the provisioned infrastructure according to the Terraform definitions.

5. **Customize and Experiment:**
   - Customize the examples as needed and try different configurations to better understand how Terraform works.

## Additional Resources

In addition to the examples in this repository, you can find more information about Terraform in the [official Terraform documentation](https://www.terraform.io/docs/index.html).

## Contributions

Contributions are welcome! If you encounter any issues with the examples or have suggestions for improvements, feel free to open an issue or submit a pull request.

## Author

[Bruno Carvalho](https://github.com/brunocarvalho9810/)
