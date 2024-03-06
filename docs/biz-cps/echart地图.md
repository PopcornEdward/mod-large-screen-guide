# echart地图

## 组件介绍

基于echart库创建的地图组件

## 使用场景





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



