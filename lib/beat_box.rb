class BeatBox

    attr_reader :list
    attr_accessor :rate, :voice

    # sets default values fpr rate and voice, rate and voice can be read and set.
    def initialize(list = LinkedList.new)
        @list = list
        @rate = 200
        @voice = 'Boing'
    end

    # set list of approved beats, added beats as needed to make test work. could take input from a '.txt' file if wanted.
    def beats_list
        ['tee', 'dee', 'deep', 'bop', 'boop', 'la', 'na', 'ditt', 'doo', 'shu', 'woo', 'hoo', 'da', 'do', 'dop']
    end

    # takes each beat from the given input and ignores and beats not from beats_list
    def append(data)
        data.split.each do |word|
          @list.append(word) if beats_list.include?(word)
        end
        data
    end

    # does the same from '.append' but adds the allowed beats to the begining of the list
    def prepend(data)
        data.split.each do |word|
            @list.prepend(word) if beats_list.include?(word)
        end
        data
    end

    # counts the amount of beats in the list
    def count
        list.count
    end

    # plays the beats from the list using the default values unless changed using '.rate' or '.voice'
    def play
        `say -r #{rate} -v #{voice} #{@list.to_string}`
    end

    # converts list to a string, able to see current beats in the list
    def all
        @list.to_string
    end

    # change the rate of the voice back to default rate
    def reset_rate
        @rate = 200
    end

    # change the voice back to default voice
    def reset_voice
        @voice = 'Boing'
    end

end