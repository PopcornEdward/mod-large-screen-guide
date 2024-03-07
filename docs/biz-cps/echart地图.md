# echart地图

## 组件介绍

基于echart库创建的地图组件

## 使用场景

* 单地图静态区域展示，不做地图下钻切换交互
* 有提示信息版要展示额外信息的

## 补充说明

> 非以上使用场景，比如说地图的省市区下钻切换，或者还要其它的一些交互不在这个版本中进行实现，如果遇到，可以自行开发一个视图用于实现你的需求



## 基础用法

* 组件目前位于 `src\views\smz-platform\countyDistrictLevel\module\mapShow.vue` ,未来会提取到统一的位置
* 目前组件名称叫`mapShow`,2.0版本会改为`ecmap`

> vue

```vue
// 地图
import mapShow from './module/mapShow.vue';

//html
<!-- 地图  -->
<map-show ref="mapShow" @dataInitialized="addClassToMapShow">
    <QXA06 slot="extMsg"></QXA06>
</map-show>
<!-- end -->
//function
methods:{
  addClassToMapShow(className){
      this.$nextTick(()=>{
        const mapShowComponent = this.$refs.mapShow; // 获取map-show组件的引用
        mapShowComponent.$nextTick(() => {
        const classes = className.split(' '); // 将多个class拆分为独立的标记
        classes.forEach(cls => {
          mapShowComponent.$el.classList.add(cls); // 逐个添加class
        });
      });

      })


      setTimeout(()=>{
        this.$sUtil.removeAllClass("animate__animated")
      },3000)
    },

}
```



## Attributes



