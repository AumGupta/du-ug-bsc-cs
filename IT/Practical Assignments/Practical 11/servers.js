const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello world, This is my Node.js server\n');
});

const PORT = process.env.PORT || 10000;

server.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
