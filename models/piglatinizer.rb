class PigLatinizer
    
    def piglatinize(user_phrase)
        word_array = words(user_phrase)
        latin_array = word_array.map do |word|
          if !word.match?(/^[aeiouAEIOU]/)
            suffix = word.match(/^[^aeiouAEIOU]+/)
            word.gsub(/^[^aeiouAEIOU]+/, "") << suffix[0] + "ay"
          else
            word << "way"
          end
        end
        latin_array.join(" ")
    end
    
      def words(user_phrase)
        user_phrase.split(" ")
      end

end