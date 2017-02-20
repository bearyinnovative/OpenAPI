# `message` 事件

```
{
  "created_ts": 1487570962851,
  "image": "",
  "key": "1487570962851.0148",
  "refer_key": null,
  "subtype": "normal",
  "text": "test,
  "to_uid": "=bwCkD",
  "ts": 1487570962851,
  "type": "message",
  "uid": "=bwFrB",
  "vchannel_id": "=515SFkkX"
}
```

message 事件在 P2P 会话中收到新消息的时候触发。其中 `uid` 为消息发送者 id,
`to_uid` 为消息接收者 id, `vchannel_id` 为对应会话 id.
