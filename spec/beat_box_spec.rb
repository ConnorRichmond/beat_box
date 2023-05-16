require './lib/beat_box'
require './lib/linked_list'
require './lib/node'

describe BeatBox do
    it 'starts beat boxing' do
        bb = BeatBox.new

        expect(bb).to be_an_instance_of(BeatBox)
        expect(bb.list).to be_an_instance_of(LinkedList)
        expect(bb.list.head).to eq(nil)

        expect(bb.append('deep doo ditt')).to eq('deep doo ditt')
        expect(bb.list.head.data).to eq('deep')
        expect(bb.list.head.next_node.data).to eq('doo')

        expect(bb.append('woo hoo shu')).to eq('woo hoo shu')
        expect(bb.count).to eq(6)
    end

    it 'plays beat' do
        bb = BeatBox.new

        expect(bb.append('deep doo ditt woo hoo shu'))
        expect(bb.count).to eq(6)
        expect(bb.list.count).to eq(6)
        # expect{bb.play}.not_to raise_error

    end

    it 'adds to begining and end' do
        bb = BeatBox.new

        bb.append('deep')
        bb.append('do')
        bb.prepend('da')
        bb.append('deep')

        expect(bb.all).to eq('da deep do deep')
    end

    it 'ignores beat if not valid' do
        bb = BeatBox.new
        bb.append('deep')
        bb.append('Mississippi')
        expect(bb.all).to eq('deep')
        bb.prepend('tee tee tee mississippi')
        expect(bb.all).to eq('tee tee tee deep')
    end

    it 'changes speed and voice' do
        bb = BeatBox.new
        bb.append('deep dop dop deep')

        expect(bb.rate = 500).to eq(500)
        expect(bb.reset_rate).to eq(200)

        expect(bb.voice = 'Daniel').to eq('Daniel')
        expect(bb.reset_voice).to eq('Boing')
        # expect{bb.play}.not_to raise_error
        bb.rate = 300
        # expect{bb.play}.not_to raise_error
        bb.voice = 'Daniel'
        # expect{bb.play}.not_to raise_error
        bb.reset_rate
        bb.reset_voice
        # expect{bb.play}.not_to raise_error
    end
end