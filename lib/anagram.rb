class Words
  def initialize(input_word_1, input_word_2)
    # these are here if i need to access the individual words later on
    @input_word_1 = input_word_1.downcase
    @input_word_2 = input_word_2.downcase
    # this is what im using currently
    @word_array_1 = @input_word_1.split("")
    @word_array_2 = @input_word_2.split("")
    @vowels = ["a", "e", "i", "o", "u"]
  end

  # first method
  # def check_if_anagram
  #   downcase_string_1 = @word_array_1.sort.join("")
  #   downcase_string_2 = @word_array_2.sort.join("")
  #   if downcase_string_1.match(/aeiou/) && downcase_string_2.match(/aeiou/)
  #     if downcase_string_1 == downcase_string_2
  #       print "Anagram found!"
  #       true
  #     else
  #       print "No anagram found"
  #       false
  #     end
  #   elsif downcase_string_1.match(/aeiou/) && downcase_string_2.match(/aeiou/)
  #     "Please enter a real word!"
  #   end
  # end

  def check_if_anagram
    downcase_string_1 = @word_array_1.sort.join("")
    downcase_string_2 = @word_array_2.sort.join("")
    downcase_string_1.each do |letter|
      if @vowels.each {|v| letter.include?(v)} == true
        if downcase_string_1 == downcase_string_2
          print "Anagram found!"
          true
        else
          print "No anagram found"
          false
        end
      end
    end
  end
end
