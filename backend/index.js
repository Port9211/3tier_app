const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/api', (req, res) => {
  res.send('Hello from Hotel Booking backend!');
});

app.listen(PORT, () => {
  console.log(`Backend server running on port ${PORT}`);
});
