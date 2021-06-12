class Key

  def self.generate
    nums = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
    key = []
    5.times { key << nums.sample }
    key
  end
end
