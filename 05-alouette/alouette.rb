PARTS = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]

class Alouette

  def self.lines_for_verse(verse_num)
    lines_for_verse = []
    n = verse_num
    while n >= 0
      line = "Et" + " " + PARTS[n] + "!"
      lines_for_verse << line
      n -= 1
    end

    return lines_for_verse
  end

  def self.verse(verse_num)
  end

  def self.sing
  end
end
