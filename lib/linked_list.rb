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

    def prepend(data)
        new_node = Node.new(data)
        new_node.next_node = @head
        @head = new_node
        data
    end

    def find(start_pos, count)
        return nil if @head.nil?
        current_node = @head
        node_counter = 0
      
        # Traverse the list until you reach the starting position
        while node_counter < start_pos && !current_node.nil?
          current_node = current_node.next_node
          node_counter += 1
        end
      
        # If the starting position is out of range, return nil
        return nil if current_node.nil?
      
        # Iterate over the next 'count' nodes and store their data in an array
        result = []
        while node_counter < start_pos + count && !current_node.nil?
          result << current_node.data
          current_node = current_node.next_node
          node_counter += 1
        end
      
        result.join(' ')
    end

#end for class LinkedList
end
  