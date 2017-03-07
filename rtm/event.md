# 实时双工通信

RTM 服务通过 `websocket` 协议实现实时双工通信。

## 打开 websocket 连接

调用方可以通过 [`start`][rtm_start] API 来获取一个 websocket 连接。

[rtm_start]: ./api_start.md

## 实时事件

<!-- TODO(hbc): generate TOC by tool -->

- [`message`](./event_message.md)  P2P 会话消息事件
- [`channel_message`](./event_channel_message.md) 讨论组会话消息事件
- [`update_message`](./event_update_message.md) P2P 会话消息更新事件
- [`update_channel_message`](./event_update_channel_message.md) 讨论组会话消息更新事件
- [`add_message_reaction`](./event_add_message_reaction.md) 添加消息回应事件
- [`delete_message_reaction`](./event_delete_message_reaction.md) 删除消息回应事件
