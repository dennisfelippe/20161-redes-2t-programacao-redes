require 'socket'

serverSocket = TCPServer.new(2000)

loop { 
	clientSocket = serverSocket.accept
	clientSocket.gets
	#simula uma operação demorada
	#Como E/S disco
	sleep(2)
	clientSocket.puts('ok')
	clientSocket.close
 }