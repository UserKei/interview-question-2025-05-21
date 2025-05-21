<script setup>
import stroe from '@/assets/store.png'
import location from '@/assets/location.png'
</script>

<template>
  <el-card>
    <template #header>
      <span>圈选店人数</span>
    </template>
    <div>
      <img :src="stroe" alt="" />
      <span>店</span>

      <img :src="location" alt="" />
      <span>主要区域：广州</span>
    </div>

  </el-card>
</template>
