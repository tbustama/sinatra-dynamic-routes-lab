require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num*@num}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    @arr = ""
    num.times do 
      @arr += params[:phrase]
    end
    "#{@arr}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    when "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    when "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    when "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end
end