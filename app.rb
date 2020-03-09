require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number]
    @sq = @num.to_i ** 2
    "#{@num} squared is: #{@sq}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    "#{@phrase} " * @num.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."
  end

  get '/:operation/:number1/:number2' do
    @opp = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    if @opp == "add"
      "#{@num1.to_i + @num2.to_i}"
    elsif @opp == "subtract"
      "#{@num1.to_i - @num2.to_i}"
    elsif @opp == "multiply"
      "#{@num1.to_i * @num2.to_i}"
    else @opp == "divide"
      "#{@num1.to_f / @num2.to_f}"
    end
  end
end