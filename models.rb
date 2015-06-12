require "csv"

class Card
  attr_reader :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end
end

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
  def initialize(file_questions, file_answers)
    @file_questions = file_questions
    @file_answers = file_answers
    @questions = []
    @answers = []
  end

  def read_question
    # lee todas las preguntas del archivo @file_questions
    # y las guarda en una lista llamada @questions
  end

  def read_answer
    # lee todas las respuestas del archivo @file_answers
    # y las guarda en una lista llamada @answers
  end

  def initialize_deck
    # iterar entre @questions y @answers para instanciar un Card e ir metiendolo
    # un array "cards"
    Deck.new(cards)
  end
end
