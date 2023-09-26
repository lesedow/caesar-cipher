def caesar_cipher (string, shift)
    shift = shift % 26
    alphabet = ('a'..'z').to_a
    shifted_string = []
    shifted_alphabet = alphabet.slice(shift, alphabet.length - 1)
                               .concat(alphabet.slice(0, shift + 1))
    string.each_char do |letter| 
        if (alphabet.index(letter))
            shifted_string.push(shifted_alphabet[alphabet.index(letter)])
        elsif(alphabet.index(letter.downcase))
            shifted_string.push(shifted_alphabet[alphabet.index(letter.downcase)].upcase)
        else
            shifted_string.push(letter)       
        end
    end
    shifted_string.join
end

puts caesar_cipher('What a string!', 1000)