#language: pt
Funcionalidade: Requisições da API do Trello
Como usuário do sistema 
Eu quero realizar as requisições API
A fim de manipular e cadastrar informações

Contexto:
    Dado que o usuário possui chave e token da API do Trello 
    E já existe um quadro criado com identificador disponível
    E este quadro possui o Identificador de uma das listas presentes no quadro

Cenário: Validações API do Trello
  Quando realizar uma requisição para criar cartão
  Então o cartão deve ser criado

  Quando realizar uma requisição para editar cartão 
  Então a edição do cartão será efetuada  

  Quando realizar uma requisição para excluir cartão 
  Então o cartão será excluído

  Quando realizar uma requisição para criar cartão sem passar o identificador de uma das lista
  Então espera mensagem de erro