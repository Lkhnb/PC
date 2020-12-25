<template>
  <div class="home">
    <navbar>
      <div slot="left" class="d-flex slot">
        <div><img src="../assets/index/1.png"></div>
        <p>全部商品分类</p>
      </div>
    </navbar>
    <products-nav></products-nav>
    
    <carousel></carousel>
    
    <hot></hot>
    <dom></dom>
    <pro></pro>
    <jui></jui>
    <about></about>
    <news></news>
    <ad></ad>
    <brand></brand>
    <bottom></bottom>
    
  </div>
</template>

<script>
  // @ is an alias to /src
  import Carousel from '@/components/Carousel'
  import Hot from '@/components/Hot'
  import Dom from '@/components/Dom'
  import Pro from '@/components/Pro'
  import Jui from '@/components/Jui'
  import Ad  from '@/components/Ad'
  import Brand from '@/components/Brand'
  import About from '@/components/About'
  import News from '@/components/News'
  import Bottom from '@/components/Bottom'
  import ProductsNav from '@/components/ProductsNav'

  export default {
    name: 'Home',
    data(){
      return{
        img:""
      }
    },
    components: {
      Carousel,
      Hot,
      Dom,
      Pro,
      Jui,
      Ad,
      Brand,
      About,
      News,
      ProductsNav,
      Bottom
    },

  }
</script>
<style>
 .home .slot{
   position: relative;
   top: 7px;
 }
  
</style>