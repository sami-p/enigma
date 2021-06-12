require './lib/key'

RSpec.describe Key do
  describe 'generate' do
    it 'can generate a random 5 digit key' do
      key = Key.generate
      expect(key).to be_an(Array)
      expect(key.first).to be_a(String)
    end
  end
end
