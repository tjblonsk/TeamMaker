require "word_count"

describe String, "#word_count" do
  it "should return 1 when the string is one word long" do
    a_string = "apple"
    the_word_count = a_string.word_count
    the_word_count.should equal(1)
  end

  it "should return 0 when the string is empty" do
    a_string = ""
    the_word_count = a_string.word_count
    the_word_count.should == 0
  end

  it "should return 3 when the string is three words long" do
    a_string = "I am Happy"
    the_word_count = a_string.word_count
    the_word_count.should == 3
  end
end

