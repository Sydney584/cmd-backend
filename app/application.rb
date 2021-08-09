class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == '/users' && req.get?
      users = User.all
      return [
        200, 
        { 'Content-Type' => 'application/json' }, 
        [ users.to_json ]
      ]

    elsif req.path.match(/users/) && req.get?
      id = req.path.split("/")[2]
      user = User.find_by(id: id)
      if user
        unitodos = user.unitodos
        mynotes = user.mynotes
        mywins = user.mywins
        mytodos = user.mytodos
        user_res = {
          name: user.name,
          mytodos: mytodos,
          mywins: mywins,
          mynotes: mynotes,
          unitodos: unitodos
        }
        return [
        200, 
        { 'Content-Type' => 'application/json' }, 
        [ user_res.to_json ]
      ]
    else
       return [
        204, 
        { 'Content-Type' => 'application/json' }, 
        [ { error: 'user not found'}.to_json]
      ]
      end

    else
      res.write "Path Not Found"

    end

    res.finish
  end

end
