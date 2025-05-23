<script setup>
import { ref } from 'vue'
import stroe from '@/assets/icon/store.png'
import location from '@/assets/icon/location.png'
import rightTop from '@/assets/icon/right-top.png'

const storeStatistics = ref([
  { label: '已选门店', value: '23' },
  { label: '活跃会员数', value: '232,300' },
  { label: '平均月销售额', value: '¥222,423' },
  { label: '平均售罄率', value: '45%' },
  { label: '客单价', value: '¥34,544' },
])
</script>

<template>
  <el-card class="content">
    <span class="right-top">
      圈选店人数
      <img :src="rightTop" alt="" />
    </span>

    <div class="store-header">
      <div class="store-info">
        <img :src="stroe" alt="" class="store-icon" />
        <span class="store-title">店</span>
      </div>

      <div class="location-info">
        <img :src="location" alt="" />
        <span>主要区域：广州</span>
      </div>
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

<style lang="scss">
.content {
  position: relative;
  border-radius: 10px;

  .right-top {
    position: absolute;
    top: 0;
    right: 0;

    background-color: rgba(112, 135, 250, 1);
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
  }

  .store-header {
    display: flex;
    align-items: center;
    justify-content: space-between;

    .store-info {
      display: flex;
      align-items: center;

      .store-icon {
        width: 32px;
        height: 32px;
        margin-right: 8px;
      }

      .store-title {
        font-size: 24px;
        font-weight: bold;
        margin-right: 8px;
      }
    }
  }

  .store-stats {
    display: flex;

    .stat-item {
      margin: 10px;
    }
  }
}
</style>
