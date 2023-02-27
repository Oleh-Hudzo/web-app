// Import the necessary modules
const request = require('supertest');
const app = require('./server');

// Define the test suite
describe('Server', () => {
  // Define the test case
  it('should respond with 200 OK', async () => {
    const response = await request(app).get('/');
    expect(response.statusCode).toBe(200);
  });
});