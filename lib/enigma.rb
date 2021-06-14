require './spec/spec_helper'
require '../module/shiftable'

class Enigma

  include Shiftable

  attr_reader :key,
              :date,
              :alphabet

  def initialize
    @alphabet = ("a".."z").to_a << " "
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

  def offset(date = @date)
    set_offset(date)
  end

  def key_shift(key)
    key_array(key = @key)
  end

  def shift(key_shift, offset)
    set_shift(key_shift, offset)
  end
end
