require './lib/dictionary'

class Translate

  def eng_to_morse(greeting)
    result = []
    letters = greeting.split("")
    letters.each do |letter|
      result << Dictionary.new.dictionary[letter.downcase]
    end
    result.join
  end

  def from_file(file_name)
    text = File.read(file_name)
    eng_to_morse(text)
  end

  def morse_to_eng(code)
    english = []
     morse = code.split(/ /)
     morse.each do |letter|
      if letter == ""
        english << " "
      else
        english << Dictionary.new.dictionary.invert[letter]
      end
     end
      english.join
  end







end
