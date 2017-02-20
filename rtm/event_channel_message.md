# `channel_message` 事件

```
{
  "created_ts": 1487571355082,
  "image": "",
  "key": "1487571355082.0141",
  "refer_key": null,
  "subtype": "normal",
  "text": "test",
  "ts": 1487571355082,
  "type": "channel_message",
  "uid": "=bwCkD",
  "vchannel_id": "=bwDfQ"
}
```

channel_message 时间在讨论组会话中收到新消息的时候触发。
其中 `uid` 为消息发送者 id, `vchannel_id` 为对应会话 id.
