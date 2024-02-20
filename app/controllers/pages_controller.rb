class PagesController < ApplicationController
  def home
    puts "asd"
  end

  def update_counter
    user = User.first
    user.update! counter: user.counter += 1

    render turbo_stream: turbo_stream.replace("counter", partial: "pages/counter")    
  end
end
