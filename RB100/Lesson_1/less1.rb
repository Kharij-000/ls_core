#LESSON 1: Preperations 
  #Using_Markdown
    #works with Github Flavored markdown 
  #Good questions vs bad questions
  

  def string_lengths(sentence)
    strings = sentence.split
    lengths = []
    counter = 1
  
    until counter == strings.size do
      word_length = strings[counter - 1].length
      lengths.push(word_length)
      counter += 1
    end
  
    lengths
  end

  p string_lengths("to be or not to be")


array = [1, 2, 3]
  
mapped_array = array.map { |num| num + 1 }

mapped_array.tap { |value| p value }              # => [2, 3, 4]