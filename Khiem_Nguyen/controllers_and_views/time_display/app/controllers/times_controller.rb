class TimesController < ApplicationController
  def main
      current_time = Time.current
      @time = current_time.strftime "%B %d, %Y %H:%M%P"
  end
end
