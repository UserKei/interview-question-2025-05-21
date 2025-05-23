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
    <div class="store-header">
      <div class="store-info">
        <img :src="stroe" alt="" class="store-icon" />
        <span class="store-title">店</span>
        <span class="store-subtitle">—选择门店，圈定人货范围，按店开展营销</span>
      </div>
      <div class="location-info">
        <img :src="location" alt="" class="location-icon" />
        <span>主要区域：广州</span>
      </div>
    </div>

    <div class="store-stats-container">
      <div class="store-stats">
        <div class="stat-item" v-for="(item, index) in storeStatistics" :key="index">
          <div class="label">{{ item.label }}</div>
          <div class="value">{{ item.value }}</div>
        </div>
      </div>
      <el-button class="guide-btn" round>导入门店</el-button>
    </div>

    <div class="right-top">
      圈选店人货
      <img :src="rightTop" alt="" />
    </div>
  </el-card>
</template>

<style lang="scss">
.content {
  position: relative;
  border-radius: 10px;
  padding: 20px;

  .store-header {
    display: flex;
    align-items: center;
    // justify-content: space-between;
    margin-bottom: 30px;

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

      .store-subtitle {
        color: #666;
        font-size: 14px;
      }
    }

    .location-info {
      display: flex;
      align-items: center;

      .location-icon {
        width: 20px;
        height: 20px;
        margin-right: 5px;
      }
    }
  }

  .store-stats-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .store-stats {
    display: flex;
    flex-wrap: wrap;
    flex: 1;

    .stat-item {
      margin-right: 40px;
      margin-bottom: 15px;

      .label {
        color: #666;
        font-size: 14px;
        margin-bottom: 8px;
      }

      .value {
        font-size: 24px;
        font-weight: bold;
      }
    }
  }

  .guide-btn {
    background-color: #fff;
    border: 1px solid #dcdfe6;
    color: #333;

    &:hover {
      color: #409eff;
      border-color: #c6e2ff;
    }
  }

  .right-top {
    position: absolute;
    top: 0;
    right: 0;
    padding: 8px 15px;
    background-color: rgba(112, 135, 250, 1);
    color: white;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    display: flex;
    align-items: center;

    img {
      margin-left: 5px;
      width: 16px;
      height: 16px;
    }
  }
}
</style>
