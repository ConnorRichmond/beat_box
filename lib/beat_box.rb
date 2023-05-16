class BeatBox

    attr_reader :list
    attr_accessor :rate, :voice

    def initialize(list = LinkedList.new)
        @list = list
        @rate = 200
        @voice = 'Boing'
    end

    def beats_list
        ['tee', 'dee', 'deep', 'bop', 'boop', 'la', 'na', 'ditt', 'doo', 'shu', 'woo', 'hoo', 'da', 'do', 'dop']
    end

    def append(data)
        data.split.each do |word|
          @list.append(word) if beats_list.include?(word)
        end
        data
    end

    def prepend(data)
        data.split.each do |word|
            @list.prepend(word) if beats_list.include?(word)
        end
        data
    end

    def count
        list.count
    end

    def play
        `say -r #{rate} -v #{voice} #{@list.to_string}`
    end

    def all
        @list.to_string
    end

    def reset_rate
        @rate = 200
    end

    def reset_voice
        @voice = 'Boing'
    end

end