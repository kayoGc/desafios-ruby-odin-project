def caesar_cipher(string, key = 1) 
  down_alphabet = ("a".."z").to_a
  up_alphabet = ("A".."Z").to_a
  rotated_down_alphabet = down_alphabet.rotate(key)
  rotated_up_alphabet = up_alphabet.rotate(key)

  string.chars.reduce("") do |cipher_string, character|
    # maintains the character if it is not between [A..Z] or [a..z]
    unless character.ord.between?(65, 90) or character.ord.between?(97, 122)
      next cipher_string += character 
    end
    
    # if character is downcase
    if character.ord > 90
      next cipher_string += rotated_down_alphabet[down_alphabet.find_index(character)] 
    end
    
    # if character is upcase
    cipher_string += rotated_up_alphabet[up_alphabet.find_index(character)]
  end
end

p caesar_cipher("Grab the potato chip... And eat it!", 69)