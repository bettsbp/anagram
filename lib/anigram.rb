class Words
  def initialize(input_word_1, input_word_2)
    # these are here if i need to access the individual words later on
    @input_word_1 = input_word_1
    @input_word_2 = input_word_2
    # this is what im using currently
    @word_array_1 = @input_word_1.split("").sort_by(&:downcase)
    @word_array_2 = @input_word_2.split("").sort_by(&:downcase)
    # vowels list
    @vowels = ["a", "e", "i", "o", "u"]
  end

  # first method
  def check_if_anigram
    if @word_array_1 == @word_array_2
      true
    else
      false
    end
  end
end
