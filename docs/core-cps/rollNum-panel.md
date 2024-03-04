# rollNum-panel

## 组件介绍

题词器滚动数字

## 使用场景

大屏重点指标

* 建议页面唯一处展示

* 一般用于居中上方显示

* 数据量和增长会比较大和快（这类数据适合展示，比如订单、人数、交易额等等）
* 不做数据下钻的指标数据

## 基础用法

> script tag insert

`import rollNumPanel from "@/compBizUI/rollNum-panel/index.vue";`

> template

```vue
<rollNum-panel :rollModData="cur_rollNumArray"></rollNum-panel>
```



## Attributes

| 参数        | 说明               | 类型  | 可选值                                                       | 默认值 |
| ----------- | ------------------ | ----- | ------------------------------------------------------------ | ------ |
| rollModData | 滚动数字数位组数据 | Array | `/**格式：<br /><br />[<br />{ value:"", time: "", name:"" ,unit: "",theme:""},<br />{ value:"", time: "", name:"" ,unit: "",fontColor:""},<br />...<br />] | []     |
## 补充说明

`rollModData` json数据每个字段的更多用法参见【[box](core-cps/rollNum-panel/box.md)】组件


## 更多子组件
* [box](core-cps/rollNum-panel/box.md)