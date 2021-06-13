require './spec/spec_helper'
require '../module/shiftable'

class Enigma

  include Shiftable

  attr_reader :key,
              :date

  def initialize
    @key = Key.generate
    @date = Date.today.strftime("%d%m%y")
  end

  def encrypt(message, key = @key, date = @date)
    hash = Hash.new
    hash[:encryption] = message
    hash[:key] = key
    hash[:date] = date
    hash
  end
end
