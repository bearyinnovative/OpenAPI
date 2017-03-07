# API `POST /message`

该接口用作发送富文本消息

## 请求参数

```
{
  "token": "rtm token"
  "vchannel": "=bw52O",
  "text": "test",
  "markdown": true,
  "attachments": []
}
```

| 字段 | 类型 | 说明 |
|:----:|:----:|------|
| `vchannel` | `string` | 目标会话 id, **必填** |
| `text` | `string` | 消息正文，**必填** |
| `markdown` | `Optional<boolean>` | 消息正文是否使用 markdown 格式？默认为 true |
| `attachments` | `Array<MessageAttachment>` | 消息 attachment 结构，必填 |

### `MessageAttachment`

```
{
  "title": "test_title",
  "text": "test_text",
  "images": [{
    "url": "http://example.com/1.jpg"
  }],
  "color": "#cb3f20"
}
```

| 字段 | 类型 | 说明 |
|:----:|:----:|------|
| `title` | `Optional<string>` | attachment 标题，`title` / `text` 至少包含一个 |
| `text` | `Optional<string>` | attachment 内容，`title` / `text` 至少包含一个 |
| `images` | `Array<AttachmentImage>` | attachment 图片数组，可选 |
| `color` | `Optional<string>` | attachment 颜色，可选 |

## 响应

```
{
  "code": 0,
  "result": null
}
```
