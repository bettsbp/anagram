class Words
  def initialize(input_word_1, input_word_2)
    @input_word_1 = input_word_1
    @input_word_2 = input_word_2
    @word_array_1 = @input_word_1.split("").sort_by(&:downcase)
    @word_array_2 = @input_word_2.split("").sort_by(&:downcase)
  end

  def check_if_anigram
    if @word_array_1 == @word_array_2
      true
    else
      false
    end
  end
end
