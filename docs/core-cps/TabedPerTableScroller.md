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

| 参数 | 说明 | 类型 | 可选值 | 默认值 |
| ---- | ---- | ---- | ------ | ------ |
|      |      |      |        |        |

