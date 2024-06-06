"""
外部API接口
"""
import hashlib
import json
import time

import requests


def translate_baidu(text: str, src: str, to: str) -> str:
    """
    百度翻译API:https://fanyi-api.baidu.com/product/113
    需要提前准备appid 和 key
    :param text:翻译内容
    :param src:源语言
    :param to:目标语言
    :return:翻译后文本
    """
    transform_url: str = ("https://fanyi-api.baidu.com/api/trans/vip/translate"
                          "?q={}&from={}&to={}&appid={}&salt={}&sign={}")
    appid: str = ""
    key: str = ""

    salt = str(int(time.time()))
    sign = hashlib.md5((appid + text + salt + key).encode(encoding='UTF-8')).hexdigest()
    response = requests.get(transform_url.format(text, src, to, appid, salt, sign))
    return json.loads(response.text)["trans_result"][0]["dst"]


def ask_kimi(message, use_search: bool = True) -> str:
    """
    kimi API:https://github.com/LLM-Red-Team/kimi-free-api
    需要提前在本地启动kimiAPI服务，和token
    :param message:问题
    :param use_search:是否联网搜索
    :return:回复
    """
    domain: str = ""
    token: str = ""
    message_request = {
        "model": "kimi",
        "messages": [
            {
                "role": "user",
                "content": message
            }
        ],
        "use_search": use_search,
        "stream": False
    }
    url = "{}/v1/chat/completions".format(domain)
    json_data = json.dumps(message_request)
    headers = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token)
    }
    response = requests.request("POST", url, headers=headers, data=json_data)
    msg = response.content.decode()
    content = json.loads(msg)["choices"][0]["message"]["content"]
    return content
