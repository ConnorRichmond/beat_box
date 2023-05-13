require './lib/linked_list'
require './lib/node'

describe LinkedList do

    it 'creates new list' do
        list = LinkedList.new

        expect(list).to be_an_instance_of(LinkedList)
        expect(list.head).to eq(nil)
        expect(list.append).to eq('doop')
        expect(list.head.next_node).to eq(nil)
        expect(list.count).to eq(1)
        expect(list.to_sting).to eq('doop')
    end

end