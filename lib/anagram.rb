class Words
  def initialize(input_word_1, input_word_2)
    # these are here if i need to access the individual words later on
    @input_word_1 = input_word_1.downcase
    @input_word_2 = input_word_2.downcase
    # this is what im using currently
    @word_array_1 = @input_word_1.split("")
    @word_array_2 = @input_word_2.split("")
  end

  # first method
  def check_if_anagram
    downcase_string_1 = @word_array_1.sort.join("")
    downcase_string_2 = @word_array_2.sort.join("")
    print downcase_string_1
    print downcase_string_2
    if (downcase_string_1.include?(/[aeoui]/) && downcase_string_2.include?(/[aeoui]/))
      if downcase_string_1 == downcase_array_2
        true
      else
        false
      end
    end
  end
end
