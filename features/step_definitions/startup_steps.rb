Dado('que o usuário possui chave e token da API do Trello') do
    key = '0738d86d26648463eea832d505547403'
    token = 'c9936b8a5521858cda52d673e811de7ac5633ea9cbc74e502780525fa062f7f4'
    @auth = "key=#{key}&token=#{token}"

    @base_url = "https://api.trello.com/1/cards"
  end
  
  E('já existe um quadro criado com identificador disponível') do
    @board_id = '6242e6b50d14be1fb2deae0a'
  end
  
  E('este quadro possui o Identificador de uma das listas presentes no quadro') do
    @list_id = '6242e6b50d14be1fb2deae0b'
  end
  
  Quando('realizar uma requisição para criar cartão') do
    @params = {
        name: 'hello world',
        desc: 'this is the description',
        idList: @list_id
      }
    
      @response = HTTParty.post("#{@base_url}?#{@auth}", { body: @params })
      @card_id = @response['id']
  end
  
  Então('o cartão deve ser criado') do
    expect(@response['name']).to eq(@params[:name])
    expect(@response['desc']).to eq(@params[:desc])
  end
  
  Quando('realizar uma requisição para editar cartão') do
    @updating_params = {
      name: 'new name',
      desc: 'new desc',
      idList: @list_id
    }
  
    @response = HTTParty.put("#{@base_url}/#{@card_id}?#{@auth}", { body: @updating_params })
  end
  
  Então('a edição do cartão será efetuada') do
    expect(@response['name']).to eq(@updating_params[:name])
    expect(@response['desc']).to eq(@updating_params[:desc])
  end
  
  Quando('realizar uma requisição para excluir cartão') do
    @updating_params = {
        name: 'new name',
        desc: 'new desc',
        idList: @list_id
      }
    
      @response = HTTParty.delete("#{@base_url}/#{@card_id}?#{@auth}")
  end
  
  Então('o cartão será excluído') do
    expect(@response.code).to eq(200)
  end
  
  Quando('realizar uma requisição para criar cartão sem passar o identificador de uma das lista') do
    @params = {
        name: 'hello',
        desc: 'this is the description'
      }
    
      @response = HTTParty.post("#{@base_url}?#{@auth}", { body: @params })
  end
  
  Então('espera mensagem de erro') do
    expect(@response.body).to eq('invalid value for idList')
  end