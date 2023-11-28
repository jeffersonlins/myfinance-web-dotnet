## My Finance Web
Projeto de trabalho da disciplina de Práticas de Implementação e Evolução de Software da Especialização em Engenharia de Software da PUC Minas.
Feito por: Jefferson Azevedo Lins

## Arquitetura

![MyFinanceWeb](https://github.com/jeffersonlins/myfinance-web-dotnet/assets/89261350/8056fd91-ae22-46d4-9c08-86b91d41247a)

## Tecnologias

- .NET 7.0 
- AspNet MVC
- Entity Framework 7.0.13
- Banco de Dados: Microsoft SQL Server 2022 16.0.1000.6 (X64)

## Configuração de Startup do Projeto

- Crie o banco de dados utilizando o script na pasta do projeto (Script.sql);
- Baixe o código fonte aqui no github;
- Altere o arquivo de configuração appsettings.json, informando o nome do servidor que está o seu banco de dados; Por padrão está sendo utilizada a connection string a seguir: 

Server=LOCALHOST\\SQLEXPRESS;Database=myfinance_web_db;Trusted_Connection=True;TrustServerCertificate=True
