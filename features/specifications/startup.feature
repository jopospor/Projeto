#language: pt
Funcionalidade: Requisições da API do Trello
Como usuário do sistema 
Eu quero realizar as requisições API
A fim de manipular e cadastrar informações

Contexto:
    Dado que o usuário possui chave e token da API do Trello 

Cenário: Criar Cartão
  E já existe um quadro criado com identificador disponível
  E este quadro possui o Identificador de uma das listas presentes no quadro
  Quando realizar uma requisição para criar cartão
  Então o cartão deve ser criado

Cenário: Editar Cartão
  Quando realizar uma requisição para editar cartão 
  Então a edição do cartão será efetuada  

Cenário: Excluir Cartão
  Quando realizar uma requisição para excluir cartão 
  Então o cartão será excluído

Cenário: Criar cartão sem passar o identificador de uma das lista
  Quando realizar uma requisição para criar cartão sem passar o identificador de uma das lista
  Então espera mensagem de erro