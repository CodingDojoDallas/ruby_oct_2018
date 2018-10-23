# require 'datetime'
class TimesController < ApplicationController
  require 'date'
  def main
    dt = DateTime.now
    @date = dt.strftime("%b %d, %Y")
    @time = dt.strftime("%I:%M %p")
  end
end
