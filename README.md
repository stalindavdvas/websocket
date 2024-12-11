# WebSocket Project

This is a basic WebSocket project that enables real-time communication between the client and the server using the WebSocket protocol. This project is designed to be a simple and functional example of how to establish a WebSocket connection.

## Requirements

- Ruby (version 3.x)
- Bundler
- Dependencies (defined in the `Gemfile`)

## Installation

### Clone the repository

First, clone the repository to your local machine:

```git clone https://github.com/your-username/websocket-project.git```
Install dependencies
To install the dependencies for the project, run:

```bundle install```
This will install all the required gems, such as faye-websocket, to make the WebSocket server work.

Usage
Start the WebSocket Server
To start the WebSocket server, run:

```ruby server.rb```
This will start a WebSocket server on port 8080 (you can change the port in the server.rb file if needed).

Connect a WebSocket Client
You can test the WebSocket connection by using a browser client or any WebSocket client of your choice.

WebSocket Client in JavaScript
Here is a simple example of a WebSocket client in JavaScript:


```const socket = new WebSocket('ws://localhost:8080');
socket.onopen = function(event) {
console.log('WebSocket connection established.');
socket.send('Hello, server!');
};

```socket.onmessage = function(event) {
  console.log('Message from server: ' + event.data);
};

socket.onclose = function(event) {
  console.log('Connection closed.');
};

socket.onerror = function(error) {
  console.error('WebSocket error: ', error);
};
```
Using WebSocket in a Browser
You can open the browser’s developer tools and go to the console to use the code above to connect to the WebSocket server and send/receive messages in real-time.
