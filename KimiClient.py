import requests
import json

#Config
domain:str = "http://192.168.31.100:8000"
token:str = "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ1c2VyLWNlbnRlciIsImV4cCI6MTcyMTY1Nzg3NSwiaWF0IjoxNzEzODgxODc1LCJqdGkiOiJjb2pzNjRwa3FxNHUwNDVzcWc0MCIsInR5cCI6InJlZnJlc2giLCJzdWIiOiJjbnRvYXMxa3FxNGo5bGc5djg1ZyIsInNwYWNlX2lkIjoiY250b2FzMWtxcTRqOWxnOXY4NTAiLCJhYnN0cmFjdF91c2VyX2lkIjoiY250b2FzMWtxcTRqOWxnOXY4NGcifQ.jVB-fkMrjb-0zX99lrBXP7hPFvwVu0_OM0pfFfDRQL56GBr8kYAxS9Jl6Ua1-6SXjQHy-G4Aa53AGzo90JanBg"

# 提问
def ask(message,use_search:bool=True)->str:
    url = "{}/v1/chat/completions".format(domain)
    json_data = json.dumps({
        "model":"kimi",
        "messages":[
            {
                "role":"user",
                "content":message
            }
        ],
        "use_search":use_search,
        "stream":False
    })
    headers={
        "Content-Type":"application/json",
        "Authorization":"Bearer {}".format(token)
    }
    try:
        response = requests.request("POST",url,headers=headers,data=json_data)
        msg = response.content.decode()
        content = json.loads(msg)["choices"][0]["message"]["content"]
        return content
    except Exception:
        print("ERROR:" + msg)
    return None

# 对文件提问
def file_ask(message,file_path):    
    url = "{}/v1/chat/completions".format(domain)
    json_data = json.dumps({
        "model":"kimi",
        "messages":[
            {
                "role":"user",
                "content":[
                    {
                        "type":"file",
                        "file_url":{
                            "url":file_path
                        }
                    },
                    {
                        "type":"text",
                        "text":message
                    }
                ]
            }
        ],
        "use_search":False,
        "stream":False
    })
    headers={
        "Content-Type":"application/json",
        "Authorization":"Bearer {}".format(token)
    }
    try:
        response = requests.request("POST",url,headers=headers,data=json_data)
        msg = response.content.decode()
        content = json.loads(msg)["choices"][0]["message"]["content"]
        return content
    except Exception:
        print("ERROR:" + msg)
    return None

#Token只能使用3小时
if __name__=="__main__":
    print(file_ask("这是什么书，讲的什么","https://momot.rs/d3/y/1713892812/10/e/zlib2/pilimi-zlib2-18400000-18509999/18483091~/VdSaGHglcklAYK6ZIqNq0w/C%2B%2B%E8%A6%86%E8%BE%99%E5%BD%95%EF%BC%88%E5%BC%82%E6%AD%A5%E5%9B%BE%E4%B9%A6%EF%BC%89%20--%20%E5%8F%B2%E8%92%82%E8%8A%AC%20C_%20%E6%9D%9C%E8%B5%AB%E6%96%AF%E7%89%B9%28Stephen%20C_%20Dewhurst%29%20--%202016%20--%20cj5_4494%20--%20663751350aca1785983f53d6436e7069%20--%20Anna%E2%80%99s%20Archive.epub"))