class LinkedList

    attr_reader :head
  
    # head starts empty
    def initialize
      @head = nil
    end
  
    # checks if list is empty, creates new node. else starts a new node with head then moves to the end.
    # adds data to the end and creates new list.
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

    # adds new data to the begining of the list and makes it the head
    def prepend(data)
      new_node = Node.new(data)
      new_node.next_node = @head
      @head = new_node
      data
    end

    # counts total number of nodes starting at the head
    def count
        node_counter = 0
        current_node = @head

        while current_node != nil
            node_counter += 1
            current_node = current_node.next_node
        end

        node_counter
    end
  
    # stores data to a string
    def to_string
        current_node = @head
        node_data = ''
        while current_node != nil
          node_data << current_node.data + ' '
          current_node = current_node.next_node
        end
        node_data.strip
    end

    # allows data to be inserted anywhere into the list.
    # defines begining of the list as the head
    def insert(position, data)
        new_node = Node.new(data)
        current_node = @head
        prev_node = nil
      

        while position > 0 && !current_node.nil?
          prev_node = current_node
          current_node = current_node.next_node
          position -= 1
        end
      
      
        new_node.next_node = current_node
        prev_node&.next_node = new_node || @head = new_node
    end

    # checks for number of nodes from a given position. returns nil if empty
    def find(start_pos, count)
        return nil if @head.nil?
        current_node = @head
        node_counter = 0
      
        # Traverse the list until reaches the starting position
        while node_counter < start_pos && !current_node.nil?
          current_node = current_node.next_node
          node_counter += 1
        end
      

        return nil if current_node.nil?
      

        result = []
        while node_counter < start_pos + count && !current_node.nil?
          result << current_node.data
          current_node = current_node.next_node
          node_counter += 1
        end
      
        result.join(' ')
    end

    # finds if given data is in the list, returns true or false
    def includes?(value)
        current_node = @head
        while current_node != nil
          return true if current_node.data == value
          current_node = current_node.next_node
        end
        false
    end

    # removes data from the end of the list
    # returns nil if makes list empty
    def pop
        return nil if @head.nil?
      
        if @head.next_node.nil?
          data = @head.data
          @head = nil
          return data
        end
      
        current_node = @head
        while current_node.next_node.next_node != nil do
          current_node = current_node.next_node
        end
      
        data = current_node.next_node.data
        current_node.next_node = nil
        data
    end

#end of class
end
  