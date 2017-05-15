require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse 
  end

  get '/square/:number' do 
    @result = params[:number].to_i ** 2
    @result.to_s
  end

  get '/say/:number/:phrase' do 
    results = ""
    params[:number].to_i.times do 
      results += "#{params[:phrase]}\n"
    end
    results
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    params[:word1] + " " +  params[:word2]+ " "  + params[:word3]+ " "  + params[:word4]+ " "  + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    results = ""
    if params[:operation] == "add"
      results = (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == "subtract"
      results = (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operation] == "multiply"
      results = (params[:number1].to_i * params[:number2].to_i).to_s
    elsif params[:operation] == "divide"
      results = ((params[:number1].to_i) / (params[:number2].to_i)).to_s
    end
    results
  end



end