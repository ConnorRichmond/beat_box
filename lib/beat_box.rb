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
        @list.count
    end
end