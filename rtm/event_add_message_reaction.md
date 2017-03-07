# `add_message_reaction` 事件

```
{
  "data": {
    "created": "2017-02-20T14:19:15.000+0800",
    "created_ts": 1487571555467,
    "id": "=bwYQU",
    "message_id": "=eCRZP",
    "message_key": "1487571355082.0141",
    "reaction": ":+1:",
    "team_id": "=bw52O",
    "uid": "=bwCkD",
    "updated": "2017-02-20T14:19:15.000+0800"
  },
  "ts": 1487571555491,
  "type": "add_message_reaction"
}
```

add_message_reaction 事件在添加消息回应的时候触发。其中 `data` 字段包含了
该消息回应的数据：`message_key` 为对应消息的 key, `reaction` 为用户点选的
emoji 名称，`uid` 为点选的用户 id.
