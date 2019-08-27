class PigLatinizer

    def piglatinize(text)
        arr = text.split(' ')
        text_arr = arr.map do |word|
            if "aeiouAEIOU".include?(word[0])
                word = word + "way"
            else
                idx = word.index(/[aeiou]/)
                word = word.slice(idx..-1) + word.slice(0...idx) + 'ay'
            end
        end
        text_arr.join(' ')
    end

end