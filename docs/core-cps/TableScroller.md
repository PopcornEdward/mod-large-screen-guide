# TableScroller

## 组件介绍

静态表格和动态交互表格合成的功能组件

## 使用场景

大屏模块需要展示表格的组件优先推荐

## 基础用法

> script tag insert

`import TableScroller from "@/components/TableScroller";`

> template

```vue
<TableScroller
        :no-serial="tableScrollModal.noSerial"
        :seq-config="tableScrollModal.seq_config"
        :columns="tableScrollModal.columns"
        :tableList.sync="tableScrollModal.tableList"
        :showTexts="tableScrollModal.showTexts"
        :isPause="tableScrollModal.isPause"
        :colorHex="tableScrollModal.colorHex"
        :emptyWrapStyle="{ height: `237px` }"
        :barDataName="`bannerPercent`"
        :classOption="classOption"
        @sort-change="handler_sortChange"
        :rowTaphand="tableScrollModal.rowTaphand"
        @row-click="handler_rowClick"
      ></TableScroller>
```



## Attributes

| 参数                      | 说明                                                         | 类型    | 可选值        | 默认值 |
| ------------------------- | ------------------------------------------------------------ | ------- | ------------- | ------ |
| rowTaphand                | 是否允许外部页面点击行操作（该参数和弹窗联动）               | Boolean |               | true   |
| isInnerOrOuterOpenTripCfg | 如果rowTaphand为false,<br />isInnerOrOuterOpenTripCfg是inner代表获取内部参数<br />outer代表外部参数会和内部参数进行合并然后再弹窗<br /> | String  | inner / outer | inner  |
| tripDialogFlag            | 下钻弹窗功能开启：<br /><br />false的时候，会完全忽略rowTaphand & isInnerOrOuterOpenTripCfg<br /> | Boolean |               | true   |
| emptyHolderStyle          | 占位图 风格样式定制                                          | Object  |               | {}     |
| rollContWrapStyle         | 表格滚动外容器定制                                           | Object  |               | {}     |

## events

| 事件名称 | 说明 | 回调参数 |
| -------- | ---- | -------- |
|          |      |          |



## methods

| 名称 | 描述 |
| ---- | ---- |
|      |      |

