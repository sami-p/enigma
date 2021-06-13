require '../module/shiftable'
require 'spec_helper'

RSpec.describe Shiftable do
  it 'can create an offset array with given date' do
    @enigma = Enigma.new
    date = '130621'

    expect(@enigma.offset(date)).to eq([5, 6, 4, 1])
  end

  it 'can split key into four sub arrays' do
    @enigma = Enigma.new
    key = '47893'

    expect(@enigma.key_array(key)).to eq([[47], [78], [89], [93]])
  end
end
