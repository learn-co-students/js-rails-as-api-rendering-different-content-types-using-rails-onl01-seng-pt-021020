
# don't need instance variable anymore because we are no longer rendering to ERB 
class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
  end
end

# another option to do --
    # class BirdsController < ApplicationController
    #   def index
    #     @birds = Bird.all
    #     render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] } ==> rendering two keys, each pointing to an array
    #   end
    # end


# ANOTHER OPTION:
    # class BirdsController < ApplicationController
    #   def index
    #     @birds = Bird.all
    #     render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json
    #   end
    # end