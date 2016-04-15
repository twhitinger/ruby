class WordSplitter

  include Enumerable
# Holds the string we want to split
  attr_accessor :string
# The Enumerable methods will be calling this.
  def each
# Split the string into words(split it on space characters)
# and process each word.
    string.split(" ").each do |word|
# Yield the current word to the block that was passed to "each"
      yield word
    end
  end

end
