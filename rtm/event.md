# 实时双工通信

RTM 服务通过 `websocket` 协议实现实时双工通信。

## 打开 websocket 连接

调用方可以通过 [`start`][rtm_start] API 来获取一个 websocket 连接。

[rtm_start]: ./api_start.md

## 实时事件

<!-- TODO(hbc): generate TOC by tool -->

- [`message`](./event_message.md)
- [`channel_message`](./event_channel_message.md)
- [`update_message`](./event_update_message.md)
- [`update_channel_message`](./event_update_channel_message.md)
- [`add_message_reaction`](./event_add_message_reaction.md)
- [`delete_message_reaction`](./event_delete_message_reaction.md)
