class BeatBox

    valid_beats = ['tee', 'dee', 'deep', 'bop', 'boop', 'la', 'na'].freeze

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

    def prepend(data)
        data.split.each do |word|
            @list.prepend(word)
        end
        data
    end

    def count
        list.count
    end

    def play
        `say -r 200 -v nathan #{@list.to_string}`
    end

    def all
        @list.to_string
    end

end