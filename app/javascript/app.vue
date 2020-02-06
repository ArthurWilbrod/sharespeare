<template>
  <div id="user-card">
    <div v-for="(book, index) in list">

      <p> {{list}} </p>
      <p> {{index}} </p>
      
      <div class="card card-plain card-blog">
        <div class="row">
          <div class="col-md-4">
            <div class="card-image">
                
            </div>
            <br>
            <h6>  
              <span class="badge badge-success">Disponible</span>
            </h6>            
          </div>
          <div class="col-md-8">
            <h3 class="card-title">
              Titre

            </h3>
            <p class="card-description">
              Description
            </p>
            <h6 class="category text-primary">
              ategory
            </h6>
            <p></p>
            <div class="author">
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
</template>

<script>
export default {
  props: {
     list: Object
    },
  
  // props: {
  //     list: {
  //       type: Array,
  //     }
  //   },

  mounted() {
  console.log(typeof list);
},
}

</script>