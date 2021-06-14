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
  end

  describe 'methods' do
    xit 'can shift characters based on index' do
      text = ({
                encryption: "keder ohulw",
                key: "02715",
                date: "040895"
              })
      char = 'h'
      index = 0
      @offset = offset(hash[:date])
      @key_array = key_shift(hash[:key])

      expect(@enigma.shift_char(char, index)).to eq('k')
    end

    it 'encrypts a message' do
      expected = {
                    encryption: "keder ohulw",
                    key: "02715",
                    date: "040895"
                  }

      expect(@enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
    end

    it 'can decrypt a message' do
      expected = {
                  decryption: "hello world",
                  key: "02715",
                  date: "040895"
                 }

      expect(@enigma.decrypt("keder ohulw", "02715", "040895")).to eq(expected)
    end

    it 'can encrypt and decrypt a message without a given key and date' do
      encrypted = @enigma.encrypt("hello world")

      expect(encrypted).to be_a(Hash)
      expect(encrypted[:encryption]).to be_a(String)
      expect(encrypted[:key]).to be_a(String)
      expect(encrypted[:date]).to be_a(String)

      decrypted = @enigma.decrypt(encrypted[:encryption], encrypted[:key], encrypted[:date])
      
      expect(decrypted).to be_a(Hash)
      expect(decrypted[:decryption]).to eq("hello world")
      expect(decrypted[:key]).to eq(encrypted[:key])
      expect(decrypted[:date]).to eq(encrypted[:date])
    end
  end
end
