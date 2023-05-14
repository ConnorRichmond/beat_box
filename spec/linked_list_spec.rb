require './lib/linked_list'
require './lib/node'

describe LinkedList do

    it 'creates new list' do
        list = LinkedList.new

        expect(list).to be_an_instance_of(LinkedList)
        expect(list.head).to eq(nil)
    end

    it 'appends more nodes' do
        list = LinkedList.new
    
        expect(list.append('doop')).to eq('doop')
        expect(list.head).to be_an_instance_of(Node)
        expect(list.head.next_node).to eq(nil)
    
        expect(list.append('deep')).to eq('deep')
        expect(list.head.next_node).to be_an_instance_of(Node)
    end

    it 'counts total methods' do
        list = LinkedList.new
    
        list.append('doop')
        list.append('deep')
    
        expect(list.count).to eq(2)
    end
      
    it 'strings elements' do
        list = LinkedList.new
    
        list.append('doop')
        list.append('deep')
        
        expect(list.to_string).to eq('doop deep')
    end

    it 'inserts to chosen position' do
        list = LinkedList.new

        list.append('plop') 
        list.append('suu')
        expect(list.count).to eq(2)
        expect(list.to_string).to eq('plop suu')

        list.insert(1,'woo')
        expect(list.to_string).to eq('plop woo suu')
        expect(list.count).to eq(3)
    end

    it 'adds to begining of list' do
        list = LinkedList.new

        list.append('plop') 
        list.append('suu')
        expect(list.count).to eq(2)
        expect(list.to_string).to eq('plop suu')

        list.prepend('dop')
        expect(list.count).to eq(3)
        expect(list.to_string).to eq('dop plop suu')
    end

    it 'returns number of elements after a position' do
        list = LinkedList.new

        list.append('deep')
        list.append('woo')
        list.append('shi')
        list.append('shu')
        list.append('bloop')
        expect(list.to_string).to eq('deep woo shi shu bloop')
        expect(list.count).to eq(5)

        expect(list.find(2,1)).to eq('shi')
        expect(list.find(1,3)).to eq('woo shi shu')
    end



end