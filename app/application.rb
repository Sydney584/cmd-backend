class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    # EXERCISER ROUTES
   

    
    # Exerciser Index
    if req.path == ('/quotes') && req.get?
      return [200, {'Content-Type' => 'application/json'}, [Quote.all.to_json]]
    end

    if req.path == ('/users') && req.get?
      return [200, {'Content-Type' => 'application/json'}, [User.all.to_json]]
    end

    if req.path == ('/mytodos') && req.get?
      return [200, {'Content-Type' => 'application/json'}, [Mytodo.all.to_json]]
    end

    if req.path == ('/mynotes') && req.get?
      return [200, {'Content-Type' => 'application/json'}, [Mynote.all.to_json]]
    end

    if req.path == ('/mywins') && req.get?
      return [200, {'Content-Type' => 'application/json'}, [Mywin.all.to_json]]
    end

    if req.path == ('/unitodos') && req.get?
      return [200, {'Content-Type' => 'application/json'}, [Unitodo.all.to_json]]
    end

    # Exerciser Creater
    if req.path == ('/users') && req.post?
      body = JSON.parse(req.body.read)
      user = User.create(body)
       return [201, {'Content-Type' => 'application/json'}, [user.to_json]]
    end

    
    if req.path.match('/mytodos') && req.post?
      id = req.path.split('/')[2]
      body = JSON.parse(req.body.read)
      mytodo = Mytodo.create(body)
      return [201, {'Content-Type' => 'application/json'}, [user.as_json(include: :mytodos).to_json]]
    end

    # if req.path == ('/mytodos') && req.post?
    #   body = JSON.parse(req.body.read)
    #   mytodo = Mytodo.create(body)
    #   return [201, {'Content-Type' => 'application/json'}, [mytodo.to_json]]
    # end

    if req.path.match('/unitodos') && req.post?
      id = req.path.split('/')[2]
      body = JSON.parse(req.body.read)
      unitodo = Unitodo.create(body)
      return [201, {'Content-Type' => 'application/json'}, [user.as_json(include: :unitodos).to_json]]
    end

    if req.path.match('/mywins') && req.post?
      id = req.path.split('/')[2]
      body = JSON.parse(req.body.read)
      mywin = Mywin.create(body)
      return [201, {'Content-Type' => 'application/json'}, [user.as_json(include: :mywins).to_json]]
    end

    if req.path.match('/mynotes') && req.post?
      body = JSON.parse(req.body.read)
      id = req.path.split('/')[2]
      mynote = Mynote.create(body)
      return [201, {'Content-Type' => 'application/json'}, [user.as_json(include: :mynotes).to_json]]
    end

    

    # Exerciser Show
   

    if req.path.match('/users/') && req.get?
      id = req.path.split("/")[2]
      user = User.find_by(id: id)
  
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
    end


    
    # Exerciser Update
    if req.path.match('/users/') && req.put?
      id = req.path.split('/')[2]
      body = JSON.parse(req.body.read)
      user = User.find(id)
      user.update(body)
      
      return [202, {'Content-Type' => 'application/json'}, [user.to_json]]
    end

    if req.path.match('/mytodos/') && req.put?
      id = req.path.split('/')[2]
      body = JSON.parse(req.body.read)
      mytodo = Mytodo.find(id)
      mytodo.update(body)
      
      return [202, {'Content-Type' => 'application/json'}, [user.as_json(include: :mytodos).to_json]]
    end

    if req.path.match('/unitodos/') && req.put?
      id = req.path.split('/')[2]
      body = JSON.parse(req.body.read)
      unitodo = Unitodo.find(id)
      unitodo.update(body)
      
      return [202, {'Content-Type' => 'application/json'}, [user.as_json(include: :unitodos).to_json]]
    end

    if req.path.match('/mywins/') && req.put?
      id = req.path.split('/')[2]
      body = JSON.parse(req.body.read)
      mywin = Mywin.find(id)
      mywin.update(body)
      
      return [202, {'Content-Type' => 'application/json'}, [user.as_json(include: :mywins).to_json]]
    end

    if req.path.match('/mynotes/') && req.put?
      id = req.path.split('/')[2]
      body = JSON.parse(req.body.read)
      mynote = Mynote.find(id)
      mynote.update(body)
      
      return [202, {'Content-Type' => 'application/json'}, [user.as_json(include: :mynotes).to_json]]
    end


    # Exerciser Delete

    if req.path.match('/users/') && req.delete?
      id = req.path.split('/')[2]
        user = User.find(id)
        user.destroy
        return [200, {'Content-Type' => 'application/json'}, [{message: "User Destroyed"}.to_json]]
      
    end

   

     
     
      
    # static route to test rack
    if req.path.match(/test/) 
      return [200, { 'Content-Type' => 'application/json' }, [ {:message => "test response!"}.to_json ]]

    else
      res.write "Path Not Found"

    end

    res.finish
  end

 
end

