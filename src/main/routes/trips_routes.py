from flask import Flask, jsonify, Blueprint

app = Flask(__name__)

trips_routes_bp = Blueprint("trip_routes", __name__)

@trips_routes_bp.route("/trips", methods=["POST"])
def create_trip():
    return jsonify({"ola": "mundo"}), 200

app.register_blueprint(trips_routes_bp)

if __name__ == "__main__":
    app.run(host='localhost', port=3000, debug=True)