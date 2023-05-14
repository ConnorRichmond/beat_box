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
        node_data = ''
        while current_node != nil
          node_data << current_node.data + ' '
          current_node = current_node.next_node
        end
        node_data.strip
    end

    def insert(position, data)
        new_node = Node.new(data)
        current_node = @head
        prev_node = nil
      
        while position > 0 && !current_node.nil?
          prev_node = current_node
          current_node = current_node.next_node
          position -= 1
        end
      
        raise 'Position out of range' if position > 0
      
        new_node.next_node = current_node
        prev_node&.next_node = new_node || @head = new_node
    end

#end for class LinkedList
end
  