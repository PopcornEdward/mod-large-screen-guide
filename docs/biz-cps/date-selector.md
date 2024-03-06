# date-selector

## 组件介绍

日期范围选择器

## 使用场景

* 统一查询整块大屏所有包含日期范围的接口，并同步状态
* 日期范围组件样式基于ELEMENT-ui风格定制后，和大屏风格贴合，非纯白样式

## $data

| 参数          | 说明                                                         | 类型   | 可选值 | 默认值                    |
| ------------- | ------------------------------------------------------------ | ------ | ------ | ------------------------- |
| dateRange     |                                                              | Array  |        | `['开始日期','结束日期']` |
| pickerOptions | 当前时间日期选择器特有的选项参考下表<br />[pickerOptions](#pickerOptions) | Object |        |                           |

✨

### pickerOptions

| 参数           | 说明                                                         | 类型                           | 可选值 | 默认值   |
| :------------- | :----------------------------------------------------------- | :----------------------------- | :----- | :------- |
| shortcuts      | 设置快捷选项，需要传入 { text, onClick } 对象用法参考 demo 或下表 | Object[]                       | —————  | ———————— |
| disabledDate   | 设置禁用状态，参数为当前日期，要求返回 Boolean               | Function                       | —      | —        |
| cellClassName  | 设置日期的 className                                         | Function(Date)                 | —      | —        |
| firstDayOfWeek | 周起始日                                                     | Number                         | 1 到7  | 7        |
| onPick         | 选中日期后会执行的回调，只有当 `daterange` 或 `datetimerange` 才生效 | Function({ maxDate, minDate }) | —      | —        |

## methods

| 名称               | 描述                             |
| ------------------ | -------------------------------- |
| fn_valueChange     | 同步改变全局时间变量             |
| openDateTimePicker | 开启显示日期组件，并自动获取焦点 |

