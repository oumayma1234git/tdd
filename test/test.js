const request = require('supertest');
const app = require('./index');

describe('GET /', () => {
  it('devrait renvoyer le message "Hello World !" ', (done) => {
    request(app)
      .get('/')
      .expect(200)
      .end((err, res) => {
        if (err) return done(err);
        if (res.text !== "Hello World !") { // Mise à jour du message d'assertion
          return done(new Error('Message incorrect renvoyé par l\'API'));
        }
        done();
      });
  });
});
