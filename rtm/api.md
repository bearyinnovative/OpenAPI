# HTTP API

RTM 服务提供了一系列接口来进行对 RTM 服务的调用。

## API 概况

RTM HTTP API 基地址为：

```
https://rtm.bearychat.com
```

对于不同的 API 接口，只需要拼接对应的请求方法路径到基地址即可，如：

```
https://rtm.bearychat.com/start
```

## 授权

如无特别说明，所有 RTM API 都需要授权后才能访问。目前支持授权方式有：

- RTM token 授权

### RTM token 授权

**RTM token 目前可以通过创建 hubot 机器人获得**

该授权模式下，请求方需要把 RTM token 值放到请求的 token 参数中，如：

```
POST https://rtm.bearychat.com/start?token=your_rtm_token
```

或者

```
POST https://rtm.bearychat.com/start
{
  "token": "your_rtm_token"
}
```

## API 接口

<!-- TODO(hbc): generate TOC by tool -->

- [`start`](./api_start.md)
