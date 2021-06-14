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
    @offset = offset(hash[:date])
    @key_array = key_shift(hash[:key])
    encrypted = ''
    message.chars.each_with_index do |char, index|
      letter_index = @alphabet.reduce(0) do |value, letter|
        value += @alphabet.index(letter) if char == letter
        value
      end
      encrypted << @alphabet.rotate(letter_index + shift_char(char, index))[0]
    end
    hash[:encryption] = encrypted
    hash
  end

  def decrypt(message, key = @key, date = @date)
    hash = Hash.new
    hash[:decryption] = message
    hash[:key] = key
    hash[:date] = date
    @offset = offset(hash[:date])
    @key_array = key_shift(hash[:key])
    encrypted = ''
    message.chars.each_with_index do |char, index|
      letter_index = @alphabet.reduce(0) do |value, letter|
        value += @alphabet.index(letter) if char == letter
        value
      end
      encrypted << @alphabet.rotate(letter_index - shift_char(char, index))[0]
    end
    hash[:decryption] = encrypted
    hash
  end

  def shift_char(char, index)
    remainder = index % 4
    if @alphabet.include?(char)
      return set_shift(@key_array, @offset)[0] if remainder == 0
      return set_shift(@key_array, @offset)[1] if remainder == 1
      return set_shift(@key_array, @offset)[2] if remainder == 2
      return set_shift(@key_array, @offset)[3] if remainder == 3
    end
  end

  def offset(date = @date)
    set_offset(date)
  end

  def key_shift(key = @key)
    key_array(key)
  end
end
