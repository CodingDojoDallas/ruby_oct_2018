require = 'date'

class TimesController < ApplicationController
  def main
  	@date = DateTime.now.strftime("%b %d, %Y %I:%M %p")
  end
end
