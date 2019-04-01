require 'date'

class Application

    def call(env)
      resp = Rack::Response.new

       current_time =  DateTime.now
       current_time = current_time.to_s[11..15]
       time_int = current_time.split(':').join.to_i

       if time_int < 1200
         resp.write "Good Morning!"
       else
         resp.write "Good Afternoon!"
       end
     resp.finish
   end

  end
