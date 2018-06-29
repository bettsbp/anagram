require("rspec")
require("pry")
require("anigram")

describe("Anigram#check_if_anigram") do
  it("will see if ruby is an anagram of bury and return true") do
    words_to_test = Words.new("ruby","bury")
  end
  it("will see if ruby is an anagram of bury and return true even though there is capitalization") do
    words_to_test = Words.new("rUBy","Bury")
  end
end
