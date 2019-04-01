require "pry"

class Application

  def call(environment_hash)
    response = Rack::Response.new

    if Time.now.hour < 12
      response.write("Good Morning!")
    else
      response.write("Good Afternoon!")
    end

    response.finish
  end

end
