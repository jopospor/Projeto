class Cards
    include HTTParty
    require_relative '../hooks/startup_hook'
    key = '0738d86d26648463eea832d505547403'
    token = 'c9936b8a5521858cda52d673e811de7ac5633ea9cbc74e502780525fa062f7f4'
    @auth = "key=#{key}&token=#{token}"
    @base_url = "https://api.trello.com/1/cards"
    @board_id = '6242e6b50d14be1fb2deae0a'
    @list_id = '6242e6b50d14be1fb2deae0b'
     
    def initialize(body)
      @options = {:body => body}
      @options2 ={}
    end

    def postCard
        self.class.post("#{@base_url}?#{@auth}", @options)
    end
  
    def getCard (id)
        self.class.get("#{@base_url}/#{@card_id}?#{@auth}", @options2)
    end
  
    def putCard (id)
        @updating_params = {
            name: 'new name',
            desc: 'new desc',
            idList: @list_id
          }
        self.class.put("#{@base_url}/#{@card_id}?#{@auth}", @updating_params)
    end
  
    def deleteCard (id)
        self.class.delete("#{@base_url}/#{@card_id}?#{@auth}", @options2)
    end
end