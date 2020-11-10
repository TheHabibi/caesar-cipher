def caesar_cipher(string, num)  
    cryp = Array.new(string.split(""))
    a_score = "A".ord
    z_score = "z".ord
  
    
sent = "";
   
    cryp.each{ |ind| 
        order = ind.ord
        if order < z_score && order >= a_score
            if order +num < z_score 
                sent+=(order +num).chr
            else
             
                new_num =  num- (z_score - order) -1
                sent+=(a_score + new_num).chr
            end
        else
            sent+=(order.chr)
        end
    }
    puts sent
end


caesar_cipher("What a string!",5)
