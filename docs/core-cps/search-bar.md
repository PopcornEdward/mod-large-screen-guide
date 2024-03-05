# search-bar

## 组件介绍

查询内容的辅助插件，用于筛选过滤细节，简称搜索条工具

## **使用场景**

一般和下面场景组合：

* `searchbar+table`

* `searchbar+form`

* `searchbar+echart`

  ...

> 出现以上场景或者更多查询，需要条件交互的场景就可以考虑用它了！

## **组件描述**

```json
searchItems: [
    {
        type: "select",
        property: "moneyScale",
        placeholder: "全部规模",
        // defaultValueIdx:1,
        options: this.fn_all_the_size(),
        // remote: true,
        // filterable: true,
        // reserveKey: true,
        // remoteMethod: this.fn_all_the_size,
    },
    {
        type: "select",
        property: "year",
        placeholder: "备案年份",
        // defaultValueIdx:1,
        options: this.fn_fortheRecordYear(),
        // [],
        // remote: true,
        // filterable: true,
        // reserveKey: true,
        // remoteMethod: this.fn_fortheRecordYear,
    },
    ...
],
```



## Attributes

| 参数            | 说明                                     | 类型     | 可选值                                                       | 默认值                      |
| --------------- | ---------------------------------------- | -------- | ------------------------------------------------------------ | --------------------------- |
| type            | 交互字段功能类型                         | String   | `text`\ `rangeText`<br />`select` \ `cascader`<br />`date` \ `moment`<br />`month` |                             |
| property        | 字段表属性名（和接口入参一致）           | String   |                                                              |                             |
| placeholder     | 默认占位文本                             | String   |                                                              |                             |
| options         | 下拉框类型组件配套数据列表               | Array    |                                                              | `[arg]:(function(){...})()` |
| defaultValueIdx | 和`options`配套 用于定位下拉框默认显示值 | Number   |                                                              |                             |
| remote          | 是否开启异步远程搜索功能                 | Boolean  |                                                              |                             |
| filterable      | 是否开启当前字段过滤                     | Boolean  |                                                              |                             |
| reserveKey      | 是否开启当前字段翻转key                  | Boolean  |                                                              |                             |
| remoteMethod    | 和`remote`配套使用，只有为true它才有意义 | function |                                                              | `[arg]:(function(){...})()` |

