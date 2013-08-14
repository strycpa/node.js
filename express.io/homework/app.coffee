app = require('express.io')()
app.http().io()

app.io.route 'incoming_radios_change', (req) ->
	req.io.broadcast 'outgoing_radios_change', req.data

app.get '/', (req, res) ->
	res.sendfile __dirname + '/client.html'


app.listen 1107
