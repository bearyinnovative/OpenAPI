# `update_message` 事件

```
{
  "data": {
    "created": "2017-02-20T14:09:23.000+0800",
    "created_ts": 1487570962679,
    "deleted": true,
    "edited": false,
    "id": "=eCRQ7",
    "is_channel": false,
    "key": "1487570962679.0147",
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
    "updated": "2017-02-20T14:32:53.000+0800",
    "vchannel_id": "=515SFkkX"
  },
  "ts": 1487572373149,
  "type": "update_message"
}
```

update_message 事件在修改、删除 P2P 消息的时候触发。其中 `data` 字段包含了修改
消息的数据：`deleted` 表示该消息是否已被删除，`edited` 表示该消息是否
已被修改过。其他值为修改后的消息内容。
