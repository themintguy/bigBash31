const express = require('express');
const cors = require('cors');
const dotenv = require('dotenv');
const userRoutes = require('./src/routes/user.routes');
const errorHandler = require('./src/middlewares/errorHandler');

dotenv.config();
const app = express();

app.use(cors());
app.use(express.json());

app.use('/api/users', userRoutes);

app.use(errorHandler); 

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
