require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @grid_arr = []
    10.times { |i| @grid_arr << ('A'..'Z').to_a.sample }
    @grid = @grid_arr.join(', ')
  end

  def score
    @user_input = params[:answer]
    @grid_arr = params[:grid].split(", ")
    @user_input_arr = @user_input.chars

    @valid_grid_word = @user_input_arr.all? { |char| @grid_arr.include?
    (char) && @user_input_arr.count <= @grid_arr.count && @user_input_arr.count(char) <= @grid_arr.count(char) }

    @guess = JSON.parse(URI.open("https://wagon-dictionary.herokuapp.com/#{@user_input}").read) # serialised string parsed (inside brackets)
  end
end
