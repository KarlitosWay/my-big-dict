class DictionaryController < ApplicationController

  def show
    @lang = LangEnum.find(params[:lang])

    # Have the user submitted a word yet?
    if params[:word] && !params[:word].nil?
      @word = params[:word]
      row = @lang.dictionaries.find_by_word(@word)
      @description = row.nil? ? nil : row.description
    end
  end

  def new
    @dictionary = Dictionary.new
  end

end
