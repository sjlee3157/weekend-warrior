require "pry"

class Alouette

  PARTS = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]
  VERSE_END = "Alouette!\nAlouette!\nA-a-a-ah"
  REFRAIN = "Alouette, gentille alouette,\nAlouette, je te plumerai."

  def self.lines_for_verse(verse_num)
    # lines_for_verse(2) should return ["Et les yeux!", "Et le bec!", "Et la tête!"]
    lines_for_verse = []
    n = verse_num
    while n >= 0
      line = "Et #{PARTS[n]}!"
      lines_for_verse << line
      n -= 1
    end
    return lines_for_verse
  end

  def self.verse(verse_num)
    verse = ""
    2.times do
      verse << "Je te plumerai #{PARTS[verse_num]}.\n"
    end

    lines_for_verse = self.lines_for_verse(verse_num)

    lines_for_verse.each do |line|
      2.times do
        verse << "#{line}\n"
      end
    end
    verse << VERSE_END

    return verse
  end

  def self.sing
    song = ""

    PARTS.size.times do |i|
      verse = self.verse(i)
      song << "#{REFRAIN}\n\n#{verse}\n\n"
    end

    song << "#{REFRAIN}"
    
    return song
  end
end
