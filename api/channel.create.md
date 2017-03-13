# channel.create

创建一个讨论组

## 请求方式

```
POST {base_url}/channel.create
```

## 请求参数

**需要登录**

| 参数名称 | 参数类型 | 参数是否必须？ | 说明 | 样例 |
|:--------:|:--------:|:--------------:|------|------|
| `name` | `string` | 是 | 讨论组名称，可以包含 2~20 个英文字符或 1~10 个中文字符。
允许使用数字、下划线 (`_`)、中线 (`_`)和点。 | 吃喝玩乐在深圳 |
| `topic` | `string` | 否 | 讨论组话题 | 今天吃什么？ |
| `private` | `boolean` | 否 | 讨论组是否为私密？ |  |

## 响应

### 201

```json
{
  "private": false,
  "general": true,
  "latest_ts": 1486367046281,
  "uid": "=bw52O",
  "name": "所有人",
  "is_member": false,
  "is_active": true,
  "type": "normal",
  "topic": null,
  "member_uids": [
    "=bw52O"
  ],
  "vchannel_id": "=bw52O",
  "id": "=bw52O",
  "team_id": "=bw52O"
}
```
### 错误响应

```json
{
  "code": // error code,
  "error": "unexpected error"
}
```

<!-- generated by gen_doc.js -->