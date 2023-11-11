# frozen_string_literal: true

def caesar_cipher(string, shift_factor)
  # Transform each character matching an English alphabet letter
  string.split('').map { |character| character.match?(/[a-zA-Z]/) ? shift(character, shift_factor) : character }.join
end

def shift(character, shift_factor)
  # Determine the offset based on upper and lower case
  offset = character.match?(/[A-Z]/) ? 65 : 97

  # Apply offset to represent the ascii characterset from 0 - 25
  # Apply modulo to wrap for shift factors that would exit the alphabet
  ((((character.ord - offset) + shift_factor) % 26) + offset).chr
end
