<template>
  <div>
    <div class="form-row">
      <div class="col-12 form-title">
        <div class="title">Customer info</div>
        <button class="btn btn-default">
          <i class="fa fa-search" aria-hidden="true"></i>
        </button>
      </div>
      <div class="col-md-6 mb-3">
        <label for="customerName">Name</label>
        <input type="text" class="form-control" id="customerName" placeholder="Name" value required />
      </div>
      <div class="col-md-6 mb-3">
        <label for="customerPhone">Phone</label>
        <input
          type="text"
          class="form-control"
          id="customerPhone"
          placeholder="Phone number"
          value
          required
        />
      </div>
    </div>
    <div class="form-row">
      <div class="col-md-12 mb-3">
        <label for="customerAddress">Address</label>
        <input type="text" class="form-control" id="customerAddress" placeholder="Address" required />
      </div>
    </div>
    <div class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input" id="customCheck1" />
      <label class="custom-control-label" for="customCheck1">Save as new customer information</label>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss">
.form-title {
  display: flex;
  justify-content: space-between;
}
</style>