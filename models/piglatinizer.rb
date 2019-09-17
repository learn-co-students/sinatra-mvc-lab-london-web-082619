class PigLatinizer

    def piglatinize(phrase)
        words = phrase.split(' ')
        piglatinized_words = words.map{ |word| piglatinize_words(word)}
        piglatinized_words.join(" ")
    end

    def piglatinize_words(word)
        vowels = ["a", "i", "o", "e", "u"]
        new_word = ""
        if vowels.include?(word[0].downcase)
            new_word = word + "way"
        elsif vowels.include?(word[1].downcase)
            pl = word[0] + "ay"
            new_word = word[1..-1] + pl
        elsif vowels.include?(word[2].downcase)
            pl = word[0..1] + "ay"
            new_word = word[2..-1] + pl
        elsif vowels.include?(word[3].downcase)
            pl = word[0..2] + "ay"
            new_word = word[3..-1] + pl
            nil
        end
        new_word
    end
 
end