alphabet = [
  "a","b","c","d","e","f","g","h","i","j",
  "k","l","m","n","o","p","q","r","s","t",
  "u","v","w","x","y","z"
]




def caesar_cipher(string, shift)
  alphabet = [
  "a","b","c","d","e","f","g","h","i","j",
  "k","l","m","n","o","p","q","r","s","t",
  "u","v","w","x","y","z"
  ]

  string = string.chars.each { |char| puts char if char.upcase}

  for char in string
    puts char
  end

  for char in 0..string.length
    if string[char]&.match?(/\p{lower}/)
      position = alphabet.index(string[char])
      position = position.to_i
      position+=shift
      puts alphabet[position]
    else
      position = alphabet.index(string[char])
      position = position.to_i
      position+=shift
     # puts alphabet[position]
      puts alphabet[position].upcase
    end
  end
end


string = 'ELLO'
shift = 5



caesar_cipher(string, shift)