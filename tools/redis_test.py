import redis

r = redis.Redis(host='localhost', port=6379, db=0, charset="utf8", decode_responses=True)

r.set("mobile", "123")
print(r.get("mobile"))