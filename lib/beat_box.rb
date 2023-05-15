class BeatBox

    attr_reader :list

    def initialize
        @list = LinkedList.new
    end

    def append(data)
        data.split.each do |word|
          @list.append(word)
        end
        data
    end

    def count
        list.count
    end

    def play
        `say -r 200 -v nathan #{@list.to_string}`
    end

end