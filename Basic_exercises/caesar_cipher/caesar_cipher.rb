def cipher_text(text, number)
    new_text = []
    number = number.to_i 
    text.split('').map! do |character|

        if !(character.match?(/[[:alpha:]]/))
            new_text.push(character)
            next
        end
        base = character.ord <= 90 ? 65 : 97
        ascii_value = (((character.ord - base) + number) % 26) + base
        new_text.push(ascii_value.chr)
    end
    return new_text.join('')
end 

puts "Enter the text: \n"
text1 = gets.chomp
puts "Enter a number to shift: \n"
number = gets.chomp

puts cipher_text(text1, number)
