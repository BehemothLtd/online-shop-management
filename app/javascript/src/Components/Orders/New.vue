<template>
  <div>
   <div class="card">
  <div class="card-header card-header-success">
    <h4 class="card-title ">New Orders</h4>
    <p class="card-category"></p>
  </div>
  <div class="card-body">
    <CustomerForm />
    <hr>
    <ProductForm />
    <hr>

  </div>
</div>

  </div>
</template>

<script>
import CustomerForm from "./CustomerForm";
import ProductForm from "./ProductForm";
export default {
  components:{
    CustomerForm,
    ProductForm,
  }
}
</script>

<style>

</style>