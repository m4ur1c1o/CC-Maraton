require "csv"

# class Card
#   attr_reader :question, :answer

#   def initialize(question, answer)
#     @question = question
#     @answer = answer
#   end
# end

class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def shuffle
    @cards.shuffle
  end
end

class Parser
  def initialize(files)
    @questions = read_question(files[0])
    @answers = read_answer(files[1])
  end

  def read_question(file)
    question = CSV.read(file, "r")
    question.flatten!
  end

  def read_answer(file)
    answer = CSV.read(file, "r")
    answer.flatten!
  end

  def initialize_deck
    cards = Hash.new
    # case text
    for i in 0...@answers.length
      cards[@questions[i]] = @answers[i]
    end
    # cards.each do  |key, value|
    #   puts key + " : " + value
    # end
    # iterar entre @questions y @answers para instanciar un Card e ir metiendolo
    # un array "cards"
    Deck.new(cards)
  end
end


# parser = Parser.new("Preguntas.csv", "Respuestas.csv")

# parser.initialize_deck












