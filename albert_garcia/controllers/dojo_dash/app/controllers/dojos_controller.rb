class DojosController < ApplicationController
  def index
    @dojo = Dojo.all
    @count = Dojo.count
  end
end
