require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do #renders the index page
    erb :index
  end

  post '/' do #receives the form data through params and renders the results page
    text_from_user = params[:user_text]

    @analyzed_text = TextAnalyzer.new(text_from_user)

    erb :results
  end
end
