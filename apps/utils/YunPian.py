import requests
import json

def send_single_sms(apikey, code, mobile):
    return {"code":0}
    #发送单条短信
    url = "https://sms.yunpian.com/v2/sms/single_send.json"
    text = "Your verification code for [Expert Edge Web] is {}. Please ignore this SMS if you are not operating in person".format(code)

    res = requests.post(url, data={
        "apikey": apikey,
        "mobile": mobile,
        "text": text
    })
    re_json = json.loads(res.text)
    return re_json


if __name__ == "__main__":
    res = send_single_sms("d6c4ddbf50ab36611d2f52041a0b949e", "123456",          "xxxxx")
    import json
    res_json = json.loads(res.text)
    code = res_json["code"]
    msg = res_json["msg"]
    if code == 0:
        print("Send successfully")
    else:
        print("Sending failure: {}".format(msg))
    print(res.text)