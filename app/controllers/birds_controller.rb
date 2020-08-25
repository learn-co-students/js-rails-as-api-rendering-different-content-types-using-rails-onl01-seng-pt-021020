# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render 'birds/index.html.erb'
#   end
# end


class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json: @birds
  end
end