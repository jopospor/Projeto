# Testes na API do Trello

## Tecnologias Utilizadas
- Ruby
- HTTParty
- rspec
- Cucumber 

## Informações específicas

Os testes resumiram-se aos fluxos básicos e de exceções relacionados aos cards do Trello. 
- Autenticação no Trello APIs (obter token de acesso);
- Criação de cards;
- Edição de cards;
- Exclusão de cards;

## Testes

| Arquivos | Descrição |
| ------ | ------ |
| Cenários | https://github.com/jopospor/Projeto/blob/master/cenários.md|

## Bundler
Instale o Bundler:

```ruby
$ gem install bundler
```

## Projeto

>Faça o Clone do projeto
>Execute o comando  para instalar as dependências
```ruby
$ bundle install
```
>Rode o projeto usando o comando

```ruby
$ cucumber
```
