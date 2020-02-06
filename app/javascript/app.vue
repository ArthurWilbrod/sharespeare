<template>
  <FlipCard>
    <template slot="front">
      <span>Hey loser</span>
    </template>
    <template slot="back">
      <span>Thought u could get rid of me loser?</span>
    </template>
  </FlipCard>
</template>

<script>
import FlipCard from 'vue-flip-card';

export default {
  components: {
    FlipCard,
  }
};
</script>