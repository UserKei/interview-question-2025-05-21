<script setup>
import { ref } from 'vue'
import stroe from '@/assets/icon/store.png'
import location from '@/assets/icon/location.png'

const storeStatistics = ref([
  { label: '已选门店', value: '23' },
  { label: '活跃会员数', value: '232,300' },
  { label: '平均月销售额', value: '¥222,423' },
  { label: '平均售罄率', value: '45%' },
  { label: '客单价', value: '¥34,544' },
])
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

    <div>
      <div class="store-stats">
        <div class="stat-item" v-for="(item, index) in storeStatistics" :key="index">
          <div class="label">{{ item.label }}</div>
          <div class="value">{{ item.value }}</div>
        </div>
      </div>
    </div>
  </el-card>
</template>
