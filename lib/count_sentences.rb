    require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    #split initial open and final close is with "/ " then opens with \ &c closes with ' | ' for what is being split
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end


