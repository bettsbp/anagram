require("rspec")
require("pry")
require("anagram")

describe("Anagram#check_if_anagram") do
  it("will see if ruby is an anagram of bury and return true") do
    words_to_test = Words.new("ruby","bury")
    expect(words_to_test.check_if_anagram).to(eq(true))
  end
  it("will see if any word is an anagram of some other word and return true") do
    words_to_test = Words.new("binary","brainy")
    expect(words_to_test.check_if_anagram).to(eq(true))
  end
  it("will see if ruby is an anagram of bury and return true even though there is capitalization") do
    words_to_test = Words.new("rUBy","Bury")
    expect(words_to_test.check_if_anagram).to(eq(true))
  end
  it("will see if the words have vowels") do
    words_to_test = Words.new("blp","cwtsh")
    expect(words_to_test.check_if_anagram).to(eq("Please enter a real word!"))
  end
end
