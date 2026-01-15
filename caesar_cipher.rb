def caesar_cipher(string, shift)
  alphabet = [
  "a","b","c","d","e","f","g","h","i","j",
  "k","l","m","n","o","p","q","r","s","t",
  "u","v","w","x","y","z"
  ]

  caps = [
    "A","B","C","D","E","F","G","H","I","J",
    "K","L","M","N","O","P","Q","R","S","T",
    "U","V","W","X","Y","Z"
  ];

  string.each_char.with_index do |char, i|
    if char == ' ' or !!(char =~ /[^A-Za-z0-9]/)
      print char
    elsif char == char.downcase
      position = alphabet.index(char)
      position+=shift
      print alphabet[position_over_flow(position)]
    else
      position = caps.index(char)
      position+=shift
      print caps[position_over_flow(position)]
    end
  end
end

def position_over_flow(position)
  if position > 26
    position = position - 26
  end
  position
end

string = 'What a string!'
shift = 5

caesar_cipher(string, shift)
puts