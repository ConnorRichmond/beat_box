require './lib/node'

describe Node do
    it "exists as readable" do
      node = Node.new("plop")
      
      expect(node).to be_an_instance_of(Node)
      expect(node.data).to eq("plop")
      expect(node.next_node).to eq(nil)
    end
end