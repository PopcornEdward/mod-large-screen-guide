[返回父组件](core-cps/rollNum-panel.md)
# box
## 组件介绍

和rollNum-panel强依赖关系的子组件

## 使用场景

滚动数字的交互和样式定制

## 基础用法

> script tag insert

`import comRollNumber1 from "@/components/comRollNumber/box.vue";`

> template

```vue
<comRollNumber1
          :value.sync="it.value"
          :time.sync="it.time"
          :itemName.sync="it.name"
          :itemUnit.sync="it.unit"
          :theme.sync="it.theme"
          :fontColor.sync="it.fontColor"
        ></comRollNumber1>
```

## Attributes

| 参数      | 说明                   | 类型           | 可选值                                              | 默认值 |
| --------- | ---------------------- | -------------- | --------------------------------------------------- | ------ |
| value     | 具体数值               | Number         |                                                     | 0      |
| time      | 滚动要花的时间，单位秒 | Number         |                                                     | 3      |
| fontColor | 字体颜色               | String         | 格式，传入颜色值，类似，#4393c,或者 rgb(234,123,28) |        |
| theme     | 滚动框风格             | Number, String |                                                     |        |
| itemName  | 指标名称               | String         |                                                     |        |
| itemUnit  | 指标单位               | String         |                                                     |        |

