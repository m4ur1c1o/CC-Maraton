class View
	def choose_deck(error=false)
		puts "error no elegiste una opción correcta" if error
		puts "Escribe la opción que prefieras [basico][avanzado]:"
		text = gets.chomp.downcase
	end

  def ask_question(question, answer)
    puts "Carta: #{question}"
    user_answer = gets.chomp
  end

  def show_score

  end
end
