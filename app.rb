require_relative 'config/environment'

class App < Sinatra::Base

  # renders the name backwards
  get "/reversename/:name" do 
    @name = params[:name]
    @name.reverse
  end

  # renders the square of the number
  get "/square/:number" do 
    (@number = params[:number].to_i ** 2).to_s
  end
 
  # repeats the phrase n times
  get "/say/:number/:phrase" do 
    
    user_word = ""
    params[:number].to_i.times do
      user_word += params[:phrase]
    end
    user_word
  end
  # (params[:number].to_i.times { puts "#{params[:phrase]}" }).to_s
  
  # word = ("#{params[:phrase]}".to_s)
  # x = ("#{params[:number]}".to_i)
  # x.times(word)
  # word
  
  # concatenates the words and adds a period
  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get "/:operation/:number1/:number2" do 

    if params[:operation] == "add"
      (params[:number1].to_i + params[:number2].to_i).to_s
    elsif
      params[:operation] == "subtract"
      (params[:number1].to_i - params[:number2].to_i).to_s
    elsif
      params[:operation] == "multiply"
      (params[:number1].to_i * params[:number2].to_i).to_s
    elsif
      params[:operation] == "divide"
      (params[:number1].to_i / params[:number2].to_i).to_s
    end
  end
 

end