require 'spec_helper'

RSpec.describe Key do
  describe 'generate' do
    it 'can generate a random 5 digit key' do
      key = Key.generate
      expect(key).to be_a(String)
      expect(key.length).to eq(5)
    end
  end
end
