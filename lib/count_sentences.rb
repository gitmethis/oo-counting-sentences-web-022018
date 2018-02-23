require 'pry'

class String

  def sentence?
      if self.end_with?(".")
         return true        
      end
      false
  end

  def question?
      if self.end_with?("?")
         return true        
      end
      false
  end

  def exclamation?
      if self.end_with?("!")
         return true        
      end
      false
  end

  def count_sentences
      arr = self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
      arr.length
  end
end

