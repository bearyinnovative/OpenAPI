# `channel_message` 事件

## 被动接收

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
其中 `uid` 为消息发送者 id, `vchannel_id` 为对应会话 id, `key` 为消息 key.

## 主动发送

```
{
  "vchannel_id": "=bwDfQ",
  "text": "test",
  "type": "channel_message",
  "channel_id": "=bwDfQ",
  "refer_key": null,
  "call_id": 1
}
```

### 字段说明

| 字段 | 类型 | 说明 |
|:----:|:----:|------|
| `vchannel_id` | `string` | P2P 会话 id，**必填** |
| `text` | `string` | 消息内容，**必填** |
| `type` | `MessageType` | 消息类型，讨论组消息值为 `channel_message`， **必填** |
| `channel_id` | `string` | 接收讨论组 id, **必填** |
| `refer_key` | `Optional<string>` | 引用消息 id, 没有引用消息时值为 `null`,  **必填** |
| `call_id` | `int` | 事件序列 id **必填** |
