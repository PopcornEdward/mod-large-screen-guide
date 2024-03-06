# CardBtnGroup

## 组件介绍

卡片切换按钮组件；支持风格切换；支持横向或者纵向的排列；支持相关触发事件

## 使用场景

以下场景可以考虑用：

* `DoorPanel`面板下包括的内容需要进行【类型】区分检索时，则在，该组件的顶部引入`CardBtnGroup`
* 例如`DoorPanel`下出现的echart组件内部还要再进一步区分echart数据的【业务类别】同样引入该组件

## Attributes

| 参数     | 说明                   | 类型           | 可选值                  | 默认值 |
| -------- | ---------------------- | -------------- | ----------------------- | ------ |
| curIndex | 初始化下标，默认选中用 | String, Number |                         | 0      |
| tabs     | 按钮组数据模型         | Array          | [nextDataLookAt](#tabs) | []     |
| theme    | 按钮组风格             | String, Number | 1 \| 2                  | 1      |
| layout   | 布局排列方式           | String         | hor \| vert             | hor    |



✨

### tabs

```json
cardTabs: [
    {
        name: "个人", //必填
        code:"person"//必填
    },
    {
        name: "机构",
        code:"org"
    }
]
```



## events

| 事件名称 | 说明                       | 回调参数                 |
| -------- | -------------------------- | ------------------------ |
| on-click | cardTabs按钮点击时触发回调 | `function(currentIndex)` |

