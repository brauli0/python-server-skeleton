from flask import Flask, abort
from flask_restful import Resource, Api
from flask_httpauth import HTTPTokenAuth
from business import Business

app = Flask(__name__) 
api = Api(app)
auth = HTTPTokenAuth(scheme='Token')

class HelloWorld(Resource):
   @auth.verify_token
   def verify_token(token):
      if token == 'secret_token':
         return True
      else:
         abort(401, description = 'Unauthorized access, invalid token: ' + token)
   
   @auth.login_required
   def get(self):
      """ try:
         json_body = request.get_json()
      except:
         abort(400, description = "Body must be a json")
      
      try:
         json_body = request.get_json()
         msg = json_body["msg"]
      except:
         abort(400, description = "[alert] argument is required") """

      return Business.hello_world()

api.add_resource(HelloWorld, '/helloworld')

if __name__ == '__main__':
   app.run(debug=True)