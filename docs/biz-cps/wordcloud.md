# wordcloud

## 组件介绍

3d词云动画交互

## 使用场景

* 含义和tabs类似
* 表示类型权重
* 动画交互

## 基础用法

> script

`import WordCloud from "@/common/echart/WordCloud";`

> template

```vue
<word-cloud
            @on-click="handle_wordcloud_tap"
            :options="word_cloudData"
            :backStyle="backStyle"
            >
</word-cloud>
```

> $data

```js
word_cloudData: {
    // 1时长不足，2缺少签退记录，3灰名单人员，4其他
    data: [
        { label: "时长不足", value: "1", weight: 38 },
        { label: "缺少签退记录", value: "2", weight: 62 },
        { label: "灰名单人员", value: "3", weight: 75 },
        { label: "其他", value: "4", weight: 28 },
        // {label: "十九大精神", value: "111", weight: 28},
        // {label: "两学一做", value: "111", weight: 11},
        // {label: "中华民族", value: "111", weight: 22},
        // {label: "马克思主义", value: "111", weight: 33},
        // {label: "民族复兴", value: "111", weight: 44},
        // {label: "社会主义制度", value: "111", weight: 55},
        // {label: "国防白皮书", value: "111", weight: 66},
        // {label: "民主革命", value: "111", weight: 40},
    ],
        colors: [
            "#F8AEA4",
            "#00B389",
            "#E27272",
            "#29EFC4",
            "#006EFE",
            "#F5855F",
            "#C099FC",
            "#FFA940",
            "#29EFC4",
            "#F8AEA4",
        ],
},
backStyle: {
   backgroundColor: "transparent",
},
```

> methods

```js
handle_wordcloud_tap(tag) {
    console.log("___handle_wordcloud_tap", tag);
    this.$emit("on-click", tag);
},
```

## Attributes

| 参数      | 说明             | 类型   | 可选值 | 默认值 |
| --------- | ---------------- | ------ | ------ | ------ |
| options   | 数据源           | Object |        | {}     |
| backStyle | 画布背景样式控制 | Object |        | {}     |
| width     | 画布宽度         | Number |        | 500    |
| height    | 画布高度         | Number |        | 200    |
| RADIUS    | 围绕的半径       | Number |        | 100    |
| multiple  | 字体倍数         | Number |        | 20     |

## events

| 事件名称 | 说明                                     | 回调参数        |
| -------- | ---------------------------------------- | --------------- |
| on-click | 点击悬浮的类型标签触发，返回整个标签对象 | `function(tag)` |



