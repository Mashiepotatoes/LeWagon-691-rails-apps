
class PagesController < ApplicationController
  def about
  end

  def contact(name)
    @teachers = %w[prima Miguel ashley jayz]
  end

  def home
  end
end