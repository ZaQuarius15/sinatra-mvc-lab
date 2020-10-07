require 'pry'

class PigLatinizer

    def piglatinize(word)
        words = word.split
        words.map do |w|
            if w.start_with?('a','e','i','o','u','A','E','I','O','U')        
                w + "way"  
            else  
                word_parts = w.split(/([aeiou].*)/)
                word_parts[1] + word_parts[0] + "ay"
            end
        end.join(" ")
    end
end