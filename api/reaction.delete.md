# reaction.delete

删除消息 reaction

## 请求方式

```
POST {base_url}/reaction.delete
```

## 请求参数

**需要登录**

| 参数名称 | 参数类型 | 参数是否必须？ | 说明 | 样例 |
|:--------:|:--------:|:--------------:|------|------|
| `vchannel_id` | `string` | 是 | 消息所在的频道 | =bw52O |
| `key` | `string` | 是 | 想要删 sticker 的 message 的 key | 1540460114044.0100 |
| `reaction` | `string` | 是 | 想要删除的 reaction 名 | :smile: |

## 响应

### 200
### 错误响应

```javascript
{
  "code": // error code,
  "error": "unexpected error"
}
```

<!-- generated by gen_doc.js -->
