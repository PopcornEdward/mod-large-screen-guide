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

| 参数                      | 说明                                                         | 类型           | 可选值        | 默认值        |
| ------------------------- | ------------------------------------------------------------ | -------------- | ------------- | ------------- |
| rowTaphand                | 是否允许外部页面点击行操作（该参数和弹窗联动）               | Boolean        |               | true          |
| isInnerOrOuterOpenTripCfg | 如果rowTaphand为false,<br />isInnerOrOuterOpenTripCfg是inner代表获取内部参数<br />outer代表外部参数会和内部参数进行合并然后再弹窗<br /> | String         | inner / outer | inner         |
| tripDialogFlag            | 下钻弹窗功能开启：<br /><br />false的时候，会完全忽略rowTaphand & isInnerOrOuterOpenTripCfg<br /> | Boolean        |               | true          |
| emptyHolderStyle          | 占位图 风格样式定制                                          | Object         |               | {}            |
| rollContWrapStyle         | 表格滚动外容器定制                                           | Object         |               | {}            |
| barDataName               | 表格每行下放显示进度条时，用于绑定到当行数据的某个数据字段用于百分率的设置 | String         |               | bannerPercent |
| perValue                  | （进度条长度根据这个来）显示百分比数字也是这个               | String, Number |               |               |
| borderBottomSolid         | 表格行下边框实线（风格）                                     | Boolean        |               | false         |
| borderBottomSolidStyle    | 表格行下边框实线（风格）重写                                 | Object         |               | {}            |
| perBarIsShow              | 表格行下彩色进度条组件是否显示                               | Boolean        |               | true          |
| colorHex                  | 表格行下彩色进度条-背景色控制                                | String         |               |               |
| strokeWidth               | 表格行下彩色进度条-高度控制                                  | Number         |               |               |
| showTexts                 | 表格行下彩色进度条-右侧文本是否显示                          | Boolean        |               |               |
| noSerial                  | 表格是否显示序号列                                           | Boolean        |               | false         |
| isTableWAuto              | 表格容器是否自适应样式启用                                   | Boolean        |               | false         |
| columns                   | 表格列数据模型                                               | Array          |               |               |
| tableList                 | 表格查询结构集合                                             | Array          |               |               |
| emptyWrapStyle            | 暂无数据-外框样式控制                                        | Object         |               | {}            |
| isPause                   | 是暂停滚动表格                                               | Boolean        |               | true          |

## events

| 事件名称    | 说明                             | 回调参数         |
| ----------- | -------------------------------- | ---------------- |
| row-click   | 点击行格子中的文本，触发下钻功能 | `function(item)` |
| sort-change | 点击表头列排序按钮，进行后端排序 | `function(item)` |



## methods

| 名称 | 描述 |
| ---- | ---- |
| -    | -    |

