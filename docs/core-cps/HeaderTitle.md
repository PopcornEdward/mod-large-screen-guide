# HeaderTitle

## 组件介绍

大屏页头主题标题

## **使用场景**

以下情况考虑使用：

* 标题背景图可替换
* 标题居中文本或者图片的切换
* 标题支持功能性扩展按钮的摆放
* 高度整体外框的样式调节
* 标题需要细节的控制

## **基础用法**

> script tag insert

`import HeaderTitle from "@/components/HeaderTitle/index.vue";`

> template

```vue
<HeaderTitle
            name="实名制监管预警平台"
            :cfgLayout="true"
            imgNo="0"
            :midStyleCustom="{ paddingTop: `14px` }"
          >
            <template slot="prefix">
              <div class="left_group u-flex">
                <!-- 左扩展组件空间 -->
              </div>
            </template>
            <template slot="suffix">
              <div class="right_group u-flex">
                <!-- 右扩展组件空间 -->
              </div>
            </template>
          </HeaderTitle>
```

## Attributes

| 参数           | 说明                                                         | 类型    | 可选值 | **默认值** |
| :------------- | :----------------------------------------------------------- | :------ | :----- | ---------- |
| imgNo          | 内置默认背景图选择                                           | String  | 0 ~ 4  |            |
| name           | 文本文字型标题名称                                           | String  |        |            |
| imgTit         | 图片标记文本名称（这个值不存在且imgNo存在时使用）            | String  |        |            |
| cfgLayout      | 如果使用的是 name 标题风格，<br />需要用这个属性开启name风格样式布局 | Boolean |        | false      |
| customStyle    | title整体容器样式自定义                                      | Object  |        | {}         |
| midStyleCustom | 内置图片标题的图片风格样式定制                               | Object  |        | {}         |

