# DialogTogther 

## 组件介绍

下钻弹窗组合声明式组件

## 使用场景
1. 下钻 <b>`* 层级-1 *`</b> 使用
2. 下面列举部分展现情况：
* `table`
*``table+searchbar+pagination``
*`table+pagination`
*`table+searchbar`
*`wintab+table+searchbar+pagination`
* `chart` \
`...`
> `可以看到上面这段的组合形式，告诉我们弹窗会出现各种组合情况是由不同部件的组合显示来突出一些ui的细微差别，`\
>  `每个子部件自身没有太大变化，而整体的视图弹窗布局变化情况多样`\
> `故-使用该组件达到-弹窗视图的统一化和动态化创建`

## Attributes

> 这里的 Attributes 属性 对应的非props,都是v-model的属性介绍

| 参数              | 说明                  | 类型    | 可选值                           | 默认值 |
| ----------------- | --------------------- | ------- | -------------------------------- | ------ |
| mode              | 整体展示内容模式      | String  | [table]() / [form]() / [chart]() | table  |
| winTabOb          | 窗口切换相关配置      | Object  | [nextDataLookAt](#winTabOb)      | {}     |
| winTabSwitchPanel | 是否开启面板内容切换  | Boolean | false / true                     | true   |
| table             | table展示细节描述模型 | Object  | [nextDataLookAt](#table)         | {}     |
| form              | form展示细节描述模型  | Object  | [nextDataLookAt](#form)          | {}     |
| chart             | chart展示细节描述模型 | Object  | [nextDataLookAt](#chart)         | {}     |

## 组件描述

```js
/**
 * 组件描述：
 * 1、该组件用于显示1级弹窗的通用模版
 * 2、searchItems 查询条件来源于上个父级查询的行数据（下钻参数）
 * 3、headerItems 来源与后端返回的模版数据（这块是后端设计单独接口返回还是和数据源一并返回再做考虑）
 * 4、pager 来源后端返回的分页相关参数
 * 5、formbase 查询初始化参数
 * 6、modalInfo 标题和外跳链接配置
 * 7、tagInfo uid接口对应编号；year年份
 * 8、bodyItems el-table表格行数据集
 * 9、table 对象第一层参数主要是一些通用配置，比如宽高(h,w)，是否开启tab切换winTabSwitchPanel
 * 10、winTabOb 窗口切换相关配置
 * ------------
          winTabOb: {
          postyle: { //选项卡样式
            position: "initial",
            left: 0,
            top: 0,
            display: "flex",
            flexDirection: "row",
            alignItems: "center",
            justifyContent: "flex-start",
            margin: "0 0 10px 0",
          },
          pos: "left",//选项卡定位
          curShowIdx: 0, //当前选中选项卡
          btnGroup: [
            {
              name: "历年累计数",
              uid: "59c52db9",//选项卡对应接口编号
              queryParam:{ year:"" } //对应接口扩展参数
            },
            { name: "本年完成情况", uid: "ef210e72",queryParam:{ year: `${curYearNum}`} },
          ],
        },
 * ------------
 */
```

## 基础用法
> script tag insert

`import DialogT from "@/components/DialogTogther/index.vue";`

> template
```vue
 <DialogT ref="dialog_t_el" class="magictime vanishIn"></DialogT>
```

✨

### winTabOb

| 参数       | 说明             | 类型               | 可选值                      | 默认值 |
| ---------- | ---------------- | ------------------ | --------------------------- | ------ |
| postyle    | 选项卡样式覆写   | Object             |                             | {}     |
| pos        | 选项卡定位       | String             | left / right                | left   |
| curShowIdx | 当前选中选项卡   | Number             |                             |        |
| btnGroup   | 选项卡按钮组信息 | Array{JSON-OBJECT} | [nextDataLookAt](#btnGroup) |        |

✨✨

### btnGroup

| 参数       | 说明                           | 类型   | 可选值 | 默认值        |
| ---------- | ------------------------------ | ------ | ------ | ------------- |
| name       | tab标签名称                    | String |        |               |
| uid        | 选项卡对应接口编号（接口索引） | String |        |               |
| queryParam | 对应接口查询入参扩展参数       | Object |        | `{ year:"" }` |

✨✨

### table

| 参数       | 说明                           | 类型   | 可选值             | 默认值        |
| ---------- | ------------------------------ | ------ | ------------------ | ------------- |
| h          | tab标签名称                    | String |                    |               |
| modalInfo  | 选项卡对应接口编号（接口索引） | Object | [more](#modalInfo) |               |
| queryParam | 对应接口查询入参扩展参数       | Object |                    | `{ year:"" }` |

✨✨✨

#### modalInfo

```json
{
                  title: modalInfo.title,//标题
                  linkt3: process.env.VUE_APP_DDSYSEXTLINK_ALLCSXT,//第三方系统，绝对地址
                }
```







✨✨

### form

| 参数 | 说明                           | 类型   | 可选值 | 默认值 |
| ---- | ------------------------------ | ------ | ------ | ------ |
| uid  | 选项卡对应接口编号（接口索引） | String |        |        |

✨✨

### chart

| 参数       | 说明                           | 类型   | 可选值 | 默认值        |
| ---------- | ------------------------------ | ------ | ------ | ------------- |
| name       | tab标签名称                    | String |        |               |
| uid        | 选项卡对应接口编号（接口索引） | String |        |               |
| queryParam | 对应接口查询入参扩展参数       | Object |        | `{ year:"" }` |

✨✨





