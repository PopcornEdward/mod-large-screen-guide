# TabedPerTableScroller

## 组件介绍

TableScroller的加强版，带tabs切换功能，表体是定制风格样式，同样支持排序

## 使用场景

* 需要选项卡切换
* 不对单列进行排序，需要通过标题整体排序用
* 静态或滚动展示

## 基础用法

> script tag insert

`import TabedPerTableScroller from "@/components/TabedPerTableScroller";`

> template

```vue
<TabedPerTableScroller
        :no-serial="tableScrollModal.noSerial"
        :seq-config="tableScrollModal.seq_config"
        :curIndex.sync="tableScrollModal.cardIndex"
        :tabs="tableScrollModal.tabs"
        :titleText="tableScrollModal.titleText"
        :sortDef.sync="tableScrollModal.sortDef"
        :isSort="tableScrollModal.isSort"
        :columns="tableScrollModal.columns"
        :tableList.sync="tableScrollModal.tableList"
        :showTexts="tableScrollModal.showTexts"
        :isPause="tableScrollModal.isPause"
        :colorHex="tableScrollModal.colorHex"
        @on-click="fn_inner_Tab_click"
        @on-sort-change="fn_onSortChange"
      ></TabedPerTableScroller>
```

## Attributes

| 参数              | 说明                                      | 类型    | 可选值     | 默认值 |
| ----------------- | ----------------------------------------- | ------- | ---------- | ------ |
| rollContWrapStyle | 表格滚动外容器定制                        | Object  |            | {}     |
| emptyWrapStyle    | 暂无数据-外框样式控制                     | Object  |            | {}     |
| tabs              | 内联-切换tabs-按钮组                      | Array   |            | []     |
| titleText         | tabs对应content容器标题                   | String  |            | ''     |
| isSort            | 是否开启标题右侧的排序按钮                | Boolean |            | false  |
| sortDef           | isSort开启时，用于显示默认按钮的状态      | String  | asc / desc | ''     |
| colorHex          | 表格行下彩色进度条-背景色控制             | String  |            |        |
| showTexts         | 表格行下彩色进度条-右侧文本是否显示       | Boolean |            |        |
| noSerial          | 表格是否显示序号列                        | Boolean |            | false  |
| columns           | 表格列数据模型                            | Array   |            |        |
| classOption       | 滚动配置表-细节参考-`vue-seamless-scroll` | Object  |            | {}     |
| tableList         | 表格查询结构集合                          | Array   |            | []     |
| isPause           | 是暂停滚动表格                            | Boolean |            | true   |
| curIndex          | 内联选项卡tabs默认选中下标                | Number  |            | 0      |

## events

| 事件名称       | 说明                             | 回调参数         |
| -------------- | -------------------------------- | ---------------- |
| on-click       | 点击行格子中的文本，触发下钻功能 | `function(item)` |
| on-sort-change | 点击标题头排序按钮，进行后端排序 | `function(item)` |

## methods

| 名称 | 描述 |
| ---- | ---- |
| -    | -    |

