# `delete_message_reaction` 事件

```
{
  "data": {
    "created": "2017-02-20T14:26:55.000+0800",
    "created_ts": 1487572015282,
    "id": "=bwYQZ",
    "message_id": "=eCRZP",
    "message_key": "1487571355082.0141",
    "reaction": ":+1:",
    "team_id": "=bw52O",
    "uid": "=bwCkD",
    "updated": "2017-02-20T14:26:55.000+0800"
  },
  "ts": 1487572021131,
  "type": "delete_message_reaction"
}
```

delete_message_reaction 事件在取消消息响应的时候触发。其中 `data` 字段包含了
被取消的消息响应的数据：`message_key` 为对应消息的 key, `reaction` 为用户取消的
emoji 名称，`uid` 为取消的用户 id.
