# errPanel

## 组件介绍

api错误面板

## 使用场景

如果你要用到以下情况，可以考虑用该组件：

功能：

* 用于记录大屏请求异常信息
* 一键上报
* 批量/单一，删除
* 定时上报
* 清空

业务：

* 隐藏轻提示功能，但是又要记录一些错误和警告

## 基础用法

🤔🤔

### 代码片段

```vue
data(){
 return {
     mbox:null
 }
}
...
//js
if (mbox === null) {
        mbox = that.$uErrPanelBox({
          visible: true,
          title: "日志管理",
          cb_close: () => {
            // console.log("cb_close==", mbox);
            mbox.dh_hide().then(() => {
              // mbox.visible = false;
              console.log("mbox===hide", mbox);
            });
          }
        });
} 
```

## Attributes

| 参数    | 说明     | 类型           | 可选值          | 默认值 |
| ------- | -------- | -------------- | --------------- | ------ |
| theme   | 主题     | Number, String | 1: 深色 2：浅色 | 1      |
| visible | 是否显示 | Boolean        |                 | false  |
| title   | 标题     | String         |                 | `""`   |

## methods

| 方法          | 描述                                                       |
| ------------- | ---------------------------------------------------------- |
| $uErrPanelBox | 用this.$uErrPanelBox 调用，传参数见[Attrbutes](#Attrbutes) |





