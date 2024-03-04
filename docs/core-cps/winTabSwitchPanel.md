# winTabSwitchPanel
## 组件介绍
橱窗tab切换面板,内涵tabs选项卡
## 使用场景
> 当选项卡content内容是一样的情况比如tab1和tab2下内容都是一个表格没有其它个性内容的时候（简单说就是内容ui一致的情况下使用）目前遇到的情况多在`DialogTogether`组件内使用居多
## 基础用法
> script tag insert 

`import winTabSwitchPanel from "{项目路径}/winTabSwitchPanel.vue";`

> template

```vue
<winTabSwitchPanel
              v-show="item.winTabOb"
              :theme="2"
              :pos="item.winTabOb.pos"
              :postyle="item.winTabOb.postyle"
              :btnGroup="item.winTabOb.btnGroup"
              :curShowIdx="item.winTabOb.curShowIdx"
              @eventBtnTap="handle_eventBtnTap"
            >
            <!--切换内容 -->
</winTabSwitchPanel>
```
## Attributes
| 参数       | 说明                                                  | 类型           | 可选值                                                       | 默认值 |
| ---------- | ----------------------------------------------------- | -------------- | ------------------------------------------------------------ | ------ |
| theme      | tabs基础风格和布局                                    | Number, String | 1: 单个tab切换模式 <br />2: 多个tab共存切换（左对齐）<br />3: 多个tab共存切换（右对齐） | 1      |
| postyle    | tabs栏风格整体自定义                                  | Object         |                                                              | {}     |
| pos        | tabs固定样式是否存在,用于哦你工作tabs中按钮的对齐方式 | String         | left, right                                                  | right  |
| curShowIdx | tabs按钮当前选中下标，作为默认值传入                  | String, Number |                                                              | 0      |
| btnGroup   | tabs按钮组数据结构                                    | Array          |                                                              | []     |

## events

| 事件名称    | 说明               | 回调参数         |
| ----------- | ------------------ | ---------------- |
| eventBtnTap | 按钮点击返回下标值 | `function(item)` |

## methods

| 名称 | 描述 |
| ---- | ---- |
| -    | -    |

