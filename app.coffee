require 'coffee-script'
express        = require 'express'
http           = require 'http'

app = express()

app.set 'port', process.env.PORT #default : 5001)

app.post "/test_callback", (req, res) ->
  console.log req
  if req.body
    console.log '*******************************'
    console.log req.body
    console.log '*******************************'
  res.send 204


#create server
http.createServer(app).listen app.get('port'), () ->
  console.log 'It is on'

