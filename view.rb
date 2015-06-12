class View
  def ask_question(card)
    puts "Carta: #{card.question}"
    user_answer = gets.chomp
    controller.evaluate(user_answer, card)
  end

  def show_score

  end
end
