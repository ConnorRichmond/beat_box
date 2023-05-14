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
    
        expect(list.append("doop")).to eq("doop")
        expect(list).to eq(list)
        expect(list.head).to be_an_instance_of(Node)
        expect(list.head.next_node).to eq(nil)
    
        expect(list.append("deep")).to eq("deep")
        expect(list.head.next_node).to be_an_instance_of(Node)
    end

    it "counts total methods" do
        list = LinkedList.new
    
        list.append("doop")
        list.append("deep")
    
        expect(list.count).to eq(2)
    end
      
    it "strings elements" do
        list = LinkedList.new
    
        list.append("doop")
        list.append("deep")
        
        expect(list.to_string).to eq("doop deep")
    end

end