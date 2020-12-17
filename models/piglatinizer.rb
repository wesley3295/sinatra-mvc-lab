class PigLatinizer
    def piglatinize_word(word)
    vowels = ["a","e","i","o","u","A","E","I","O","U",]
    array = word.split("")
        if word[0].match(/[aeiouAEIOU]/)
            word + "way"
        else
            until vowels.include?(array[0])
                array.rotate!
            end   
                array.join("") + "ay"
        end 
    end

    def piglatinize_string(string)
        string.split(" ").map{|word| piglatinize_word(word)}.join(" ")
    end

    def piglatinize(str)
        if str.split(" ").length==1
            piglatinize_word(str)
        else
            piglatinize_string(str)
        end    
    end
end