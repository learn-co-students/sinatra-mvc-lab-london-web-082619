require 'pry'

class PigLatinizer

    attr_accessor :word

    def piglatinize(word)
        words = word.split(" ") #splits a string of words into an array with each elements being each single word
        piglatinized = []
        
        words.each do |word|
            #Possibility 1: Starts with consonant
            if word.downcase =~ /\A[^aeiou]/ #returns 0 if word starts with a consanant, nil for vowel
                split = word.split(/([aeiou].*)/).reject{ |c| c == "" } #returns an array of the consonants split off i.e. ["ch", "erry"]
                (split.length > 1) ? (piglatinized << (split[1] + split[0] + "ay")) : (piglatinized << (split[0] + "ay"))
            #Possibility 2: Starts with vowel
            else #else, word start with vowel
                piglatinized << (word + "way")
            end
        end
        piglatinized.join(" ") #return the piglatinized string
    end

end
