# API `POST /start`

该接口用作获取 RTM 模式的连接地址和用户信息。

## 请求参数

```
{
  "token": "rtm token"
}
```

## 响应

```
{
  "code": 0,
  "result": {
    // RTM token 对应用户结构
    "user": {},
    // RTM 连接地址 5 分钟内有效
    "ws_host": "wss://rtm.bearychat.com/nimbus/ws:xxx"
  }
}
```
