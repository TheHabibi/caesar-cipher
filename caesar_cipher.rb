def caesar_cipher(string, num)
      
    cryp = Array.new(string.split(""))
    a_score = "A".ord
    z_score = "z".ord
    diff = "z".ord - "a".ord
    sent = "";
   
    cryp.each{ |ind| 
        letter = ind.ord
        if letter < z_score && letter >= a_score
            if letter +num < z_score      
                if letter <="Z".ord && letter >= "A".ord && letter + num > "Z".ord
                        sent+=(letter -diff + num-1).chr
                else
                    sent+=(letter +num).chr
                end
            end
        else
            sent+=(letter.chr)
        end
    }
    puts "Here is your ciphered string " << sent
end

puts "Type a string you would like cipher"
string = gets.chomp
puts "How big of a shift you want to apply?"
shift = gets.chomp.to_i

caesar_cipher(string, shift)
