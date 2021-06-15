require './module/shiftable'
require 'spec_helper'

RSpec.describe Shiftable do
  before :all do
    @enigma = Enigma.new
  end
  it 'can create an offset array with given date' do
    date = '130621'

    expect(@enigma.offset(date)).to eq([5, 6, 4, 1])
  end

  it 'can split key into four sub arrays' do
    key = '47893'

    expect(@enigma.key_array(key)).to eq([47, 78, 89, 93])
  end

  it 'can set shift counts' do
    offset = [5, 6, 4, 1]
    key_array = [47, 78, 89, 93]

    expect(@enigma.set_shift(key_array, offset)).to eq([52, 84, 93, 94])
  end
end
