class Application

  def call(env)
    resp = Rack::Response.new
    resp.write(check_time)
    resp.finish
  end

  def check_time
    current_hour = Time.now.to_s.split[1].split(":")[0].to_i
    current_hour <= 11 ? "Good Morning!" : "Good Afternoon!"
  end

end
