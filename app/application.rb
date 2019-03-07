class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now

    if t.strftime("%k:%M") <= "12:00"
      #Alternatively => if t.hour <= 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
