require 'spec_helper'

RSpec.describe Enigma do
  before :all do
    @enigma = Enigma.new
  end
  describe '#initialize' do
    it 'exists' do
      expect(@enigma).to be_an_instance_of(Enigma)
    end

    it 'takes a randomly generated key' do
      expect(@enigma.key).to be_a(String)
      expect(@enigma.key.length).to eq(5)
    end

    it 'takes a date as a string' do
      expect(@enigma.date).to be_a(String)
    end

    it 'is initialized with a 27 character alphabet' do
      expect(@enigma.alphabet).to be_an(Array)
      expect(@enigma.alphabet.length).to eq(27)
    end

    xit 'encrypts a message' do
      enigma = Enigma.new

      text = ({
                encryption: "keder ohulw",
                key: "02715",
                date: "040895"
              })

      expect(enigma.encrypt("hello world", "02715", "040895")).to eq(text)
    end
  end
end
