# 开放 API 服务

<!-- toc -->

- [概况](#%E6%A6%82%E5%86%B5)
- [授权](#%E6%8E%88%E6%9D%83)
  * [RTM token 授权](#rtm-token-%E6%8E%88%E6%9D%83)
- [请求 Rate Limit](#%E8%AF%B7%E6%B1%82-rate-limit)
- [请求 & 响应风格](#%E8%AF%B7%E6%B1%82--%E5%93%8D%E5%BA%94%E9%A3%8E%E6%A0%BC)

<!-- tocstop -->

## 概况

开放 API (OpenAPI) 服务提供基于 HTTP 协议的 API 接口。

本文档描述的 API 版本为：`1`, 目前开放 API 的基地址 (base_url) 为：

```
https://api.bearychat.com/v1
```

包括以下几个模块：

- [meta](./meta.md)
- team: 团队相关
  * [GET /team.info](./team.info.md)
- user: 用户相关
  * [GET /user.info](./user.info.md)
  * [GET /user.me](./user.me.md)
  * [GET /user.list](./user.list.md)
- channel: 讨论组相关
  * [GET /channel.info](./channel.info.md)
  * [GET /channel.list](./channel.list.md)
  * [POST /channel.create](./channel.create.md)
  * [POST /channel.archive](./channel.archive.md)
  * [POST /channel.unarchive](./channel.unarchive.md)
  * [POST /channel.leave](./channel.leave.md)
  * [POST /channel.join](./channel.join.md)
  * [POST /channel.invite](./channel.invite.md)
  * [POST /channel.kick](./channel.kick.md)
- session_channel: 临时讨论组相关
  * [GET /session_channel.info](./session_channel.info.md)
  * [GET /session_channel.list](./session_channel.list.md)
  * [POST /session_channel.create](./session_channel.create.md)
  * [POST /session_channel.archive](./session_channel.archive.md)
  * [POST /session_channel.convert_to_channel](./session_channel.convert_to_channel.md)
  * [POST /session_channel.leave](./session_channel.leave.md)
  * [POST /session_channel.invite](./session_channel.invite.md)
  * [POST /session_channel.kick](./session_channel.kick.md)
- p2p: P2P 会话相关
  * [GET /p2p.info](./p2p.info.md)
  * [GET /p2p.list](./p2p.list.md)
  * [POST /p2p.create](./p2p.create.md)
- message: 消息相关
  * [POST /message.query](./message.query.md)
  * [GET /message.info](./message.info.md)
  * [POST /message.create](./message.create.md)
  * [POST /message.delete](./message.delete.md)
  * [POST /message.update_text](./message.update_text.md)
- emoji: 团队自定义 emoji 相关
  * [POST /emoji.list](./emoji.list.md)
- sticker: 团队 sticker 相关
  * [POST /sticker.list](./sticker.list.md)
- rtm: RTM 相关
  * [POST /rtm.start](./rtm.start.md)

## 授权

如无特别说明，所有 API 接口都需要授权后才能访问。目前支持授权方式有：

- RTM token 授权

### RTM token 授权

**RTM token 目前可以通过创建 hubot 机器人获得**

该授权模式下，请求方需要把 RTM token 值放到请求的 token 参数中，如：

```
POST https://api.bearychat.com/v1/rtm.start?token=your_rtm_token
```

或者

```
POST https://api.bearychat.com/v1/rtm.start
{
  "token": "your_rtm_token"
}
```

## 请求 Rate Limit

开放 API 采用以下 rate limit 策略：

- 未进行授权的请求，每小时可以请求 **60** 次
- 已进行授权的请求，每小时可以请求 **1000** 次


对应 rate limit 参数会在响应中给出：

```
x-ratelimit-remaining: 56
x-ratelimit-limit: 60
x-ratelimit-reset: 1489388400
```

- `x-ratelimit-remaining`: ratelimit 剩余数量
- `x-ratelimit-limit`: ratelimit 限制数量
- `x-ratelimit-reset`: ratelimit 重置 unix 时间戳

超出 ratelimit 限制会返回如下错误：

```json
{
  "code": 13,
  "error": "请求太频繁，超过限制了，请慢点"
}
```

## 请求 & 响应风格

**请求**

如无特别说明，GET 请求参数需要放到 url query string 中：

```
GET https://api.bearychat.com/v1/meta?token=your_rtm_token
```

非 GET 请求参数需要使用 JSON 格式将参数放到请求体中：

```
POST https://api.bearychat.com/v1/rtm.start
Content-Type: application/json
{
  "token": "your_rtm_token"
}
```

**响应**

如无特别说明，开放 API 所有响应都将以 JSON 格式进行响应。
