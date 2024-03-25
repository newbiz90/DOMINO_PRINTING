// Import required modules
const WebSocket = require('ws');
const net = require('net');
const http = require('http');
const fs = require('fs');

// Create a TCP client to connect to the TCP server
const tcpClient = new net.Socket();
tcpClient.connect(20000, 'localhost', function() {
    console.log('Connected to TCP server');
});

// Create a WebSocket server
const wss = new WebSocket.Server({ port: 3000 });

// Event handler for WebSocket connections
wss.on('connection', function connection(ws) {
    console.log('Client connected to WebSocket server');

    // Event handler for WebSocket messages from the web page
    ws.on('message', function incoming(message) {
        console.log('Received message from web page:', message);

        // Forward the message to the TCP server
        tcpClient.write(message);
    });
});

// Event handler for TCP messages from the TCP server
tcpClient.on('data', function(data) {
    console.log('Received message from TCP server:', data.toString());

    // Broadcast the message to all connected WebSocket clients
    wss.clients.forEach(function(client) {
        if (client.readyState === WebSocket.OPEN) {
            client.send(data.toString());
        }
    });
});

// Event handler for TCP connection errors
tcpClient.on('error', function(err) {
    console.error('TCP connection error:', err);
});

// Create an HTTP server to serve the HTML file
const server = http.createServer((req, res) => {
    fs.readFile('index.html', (err, data) => {
        if (err) {
            res.writeHead(404);
            res.end(JSON.stringify(err));
            return;
        }
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.end(data);
    });
});

// Start the HTTP server
server.listen(8080, () => {
    console.log('HTTP server running on port 8080');
});
