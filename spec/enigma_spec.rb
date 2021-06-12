require 'spec_helper'

RSpec.describe Enigma do
  describe '#initialize' do
    it 'exists' do
      enigma = Enigma.new

      expect(enigma).to be_an_instance_of(Enigma)
    end

    it 'encrypts a message' do
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
