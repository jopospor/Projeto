Before '@startup' do

    @body = {
        name: 'hello world',
        desc: 'this is the description',
        idList: @list_id
    }
    @startup = Cards.new(@body)
    
end