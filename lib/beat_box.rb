class BeatBox

    attr_reader :list

    def initialize(list = LinkedList.new)
        @list = list
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
        `say -r 200 -v nathan 'deep doo ditt woo hoo shu'`
    end

end