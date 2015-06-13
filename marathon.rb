require_relative "view"
require_relative "models"

class Controller
  def initialize()
    @view = View.new
    files = pick_deck
    # lee el archivo e instancia su contenido en un @Deck
    parser = Parser.new(files)
    @deck = parser.initialize_deck
    @score = 0
    @score_errors = 0
    game
  end

  def pick_deck
    user_choice = @view.choose_deck
    while user_choice != "basico" && user_choice != "avanzado"
      # puts user_choice != "basico" || user_choice != "avanzado"
      user_choice = @view.choose_deck(true)
    end
    case user_choice
    when "basico" 
      ["Preguntas.csv","Respuestas.csv"]
    when "avanzado"
      ["Preguntas_advanced.csv","Respuestas_advanced.csv"]
    end
  end

  def pull_card
    @deck.cards.each do |question, answer|
     user_answer = @view.ask_question(question, answer)
     evaluate(user_answer, answer)
    end
    manage_score(@score, @score_errors)
    #iteramos sobre cards para escoger una 
    # llama al metodo ask_question(manda card) dentro de view.rb
  end

  def evaluate(user_answer, answer)
    if user_answer == answer
      puts "Correct!!"
      @score += 1
    else
      puts "What an ass!!"
      @score_errors += 1
    end
    # compara "user_name" con "card.answer"
    # necesitas un metodo en view que muestre al usuario si fue correcto o no
    # mandas a llamar manage_score(evaluation)

  end

  def manage_score(score, score_errors)
    puts "\n   SCORE"
    puts "-" * 12
    puts "Correct:   #{score}"
    puts "Incorrect: #{score_errors}"
    # modifica el score dependiendo de la "evaluation"

  end

  def game
    pull_card
  end
end

controller = Controller.new
