require './lib/key'

RSpec.describe Key do
  describe 'instantiation' do
    it 'exists' do
      key = Key.new
      
      expect(key).to be_an_instance_of(Key)
    end
  end
end
