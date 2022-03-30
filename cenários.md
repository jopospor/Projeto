## Narrativa:

O usuário deve solicitar um token e uma chave para a API do Trello. Os testes realizados estão relacionados a criação de quadro, cartões e limpeza dos dados sujos durante os testes. 

## Critérios de aceitação:

## Cenários: Autenticação no Trello APIs (obter token de acesso)


### **Cenário 1:** Obter chave de API
**Dado** o usuário possua uma conta cadastrada no Trello **Quando** houver a necessidade de obter sua chave de API E acessar https://trello.com/app-key **Então** o usuário irá obter sua chave de API

### **Cenário 2:** Obter dados apenas com a chave de API
**Dado** o usuário possui chave da API do Trello **Quando** houver a necessidade de acesso aos dados do Trello **E** fizer a chamada via requisição GET **Então** o usuário não conseguirá acessar os dados do Trello, pois a chave de API por si só não concede acesso aos dados do Trello de um usuário

### **Cenário 3:** Obter token da API do Trello
**Dado** o usuário possua uma conta cadastrada no Trello **Quando** houver a necessidade de obter token da API do Trello **E** acessar a mesma página onde encontrou a chave de API ( https://trello.com/app-key) **E** clicar no "Token" com hiperlink na chave da API **E** na página aberta, clicar em  Allow **Então** o usuário será redirecionado para uma página que contém o token da API.

### **Cenário 4:** Criar Quadro utilizando a chave e o token da API do Trello sem passar um nome para o quadro que deseja criar
**Dado** o usuário possui chave e token da API do Trello **Quando** houver a necessidade de criar novos quadros **E** fizer a chamada via POST sem passar um nome para o quadro que deseja criar **Então** o usuário não poderá criar um novo quadro, pois, o preenchimento do nome do quadro é obrigatório

### **Cenário 5:** Criar Quadro utilizando a chave e o token da API do Trello
**Dado** o usuário possui chave e token da API do Trello **Quando** houver a necessidade de criar novos quadros **E** fizer a chamada via POST passando um nome para o quadro que deseja criar **Então** o usuário poderá criar um novo quadro para testes.

## Cenários: Criação de cards

### **Cenário 1:** Criar Cartão sem existir um quadro criado
**Dado** o usuário possui chave e token da API do Trello **Quando** realizar uma requisição para criar cartão sem passar o identificador de uma das lista **Então** espera mensagem de erro

### **Cenário 2:** Criar Cartão
**Dado** o usuário possui chave e token da API do Trello **E** já existe um quadro com identificador disponível **Quando** realizar uma requisição para criar cartão **Então** o cartão deve ser criado

## Cenários: Edição de cards

### **Cenário 1:** Editar Cartão sem possuir cartões criados
**Dado** o usuário não possui cartões criados em listas do quadro **Quando** realizar uma requisição para editar cartão sem passar o identificador de uma das lista **Então** espera mensagem de erro relacionada a tentativa

### **Cenário 2:** Editar Cartão
**Dado** que o usuário possui cartões criados em listas do quadro **Quando** realizar uma requisição para editar cartão **Então** a edição do cartão será efetuada 

## Cenários: Exclusão de cards

### **Cenário 1:** Excluir Cartão
**Dado** o usuário possui cartões criados em listas do quadro **Quando** realizar uma requisição para excluir cartão Então o cartão será excluído

### **Cenário 2:** Excluir Cartão sem possuir cartões criados
**Dado** o usuário não  possui cartões criados em listas do quadro **Quando** realizar uma requisição para excluir cartão **Então** espera mensagem de erro
