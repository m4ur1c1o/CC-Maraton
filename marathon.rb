require_relative "view"
require_relative "models"

class Controller
  def initialize()
    @view = View.new
    # lee el archivo e instancia su contenido en un @Deck
    parser = Parser.new(file_q, file_a) #checar argumentos
    @deck = parser.initialize_deck
    @score = 0
    game
  end

  def ask
    @deck.cards #iteramos sobre cards para escoger una y tomar su pregunta
    # llama al metodo ask_question(manda card) dentro de view.rb
  end

  def evaluate(user_answer, card)
    # compara "user_name" con "card.answer"
    # necesitas un metodo en view que muestre al usuario si fue correcto o no
    # mandas a llamar manage_score(evaluation)

  end

  def manage_score(evaluation)
    # modifica el score dependiendo de la "evaluation"
  end

  def game

  end
end

controller = Controller.new
