# `update_channel_message` 事件

```
{
  "data": {
    "created": "2017-02-20T14:15:55.000+0800",
    "created_ts": 1487571355082,
    "deleted": true,
    "edited": false,
    "id": "=eCRZP",
    "is_channel": true,
    "key": "1487571355082.0141",
    "reactions": [],
    "refer_key": null,
    "robot_id": null,
    "subtype": "info",
    "team_id": "=bw52O",
    "text": "\u8be5\u6d88\u606f\u5df2\u88ab\u5220\u9664",
    "text_i18n": {
      "en": "This message has been deleted.",
      "zh-CN": "\u8be5\u6d88\u606f\u5df2\u88ab\u5220\u9664"
    },
    "thread_key": null,
    "uid": "=bwCkD",
    "updated": "2017-02-20T14:28:34.000+0800",
    "vchannel_id": "=bwDfQ"
  },
  "ts": 1487572113560,
  "type": "update_channel_message"
}
```

update_channel_message 事件在修改、删除讨论组消息的时候触发。其中 `data` 字段
包含了修改消息的数据：`deleted` 表示该消息是否已被删除，`edited` 表示该消息是否
已被修改过。其他值为修改后的消息内容。
