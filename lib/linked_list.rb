class LinkedList

    attr_reader :head
  
    def initialize
      @head = nil
    end
  
    def append(data)
      if @head.nil?
        @head = Node.new(data)
      else
        current_node = @head
        while current_node.next_node != nil
          current_node = current_node.next_node
        end
        current_node.next_node = Node.new(data)
      end
      data
    end
  
    def count
        node_counter = 0
        current_node = @head

        while current_node != nil
            node_counter += 1
            current_node = current_node.next_node
        end

        node_counter
    end
  
    def to_string
        current_node = @head
        node_data = ""
        while current_node != nil
          node_data << current_node.data + " "
          current_node = current_node.next_node
        end
        node_data.strip
    end

#end for class LinkedList
end
  