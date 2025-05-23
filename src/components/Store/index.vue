<script setup>
import { ref } from 'vue'
import stroe from '@/assets/icon/store.png'
import location from '@/assets/icon/location.png'
import rightTop from '@/assets/icon/right-top.png'

const storeStatistics = ref([
  { label: '已选门店', value: '23' },
  { label: '活跃会员数', value: '232,300' },
  { label: '平均月销售额', value: '¥ 222,423' },
  { label: '平均售罄率', value: '45%' },
  { label: '客单价', value: '¥ 34,544' },
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
        <span class="store-subtitle">选择门店，圈定人货范围，按店开展营销</span>
      </div>

      <div class="location-info">
        <img :src="location" alt="" class="location-icon" />
        <span>主要区域：广州</span>
      </div>
    </div>

    <div>
      <div class="store-stats">
        <div class="stat-item" v-for="(item, index) in storeStatistics" :key="index">
          <div class="label">{{ item.label }}</div>
          <div class="value">{{ item.value }}</div>
        </div>
        <el-button round>导入门店</el-button>
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
    position: relative;
    display: flex;
    align-items: center;
    // justify-content: space-between;

    .location-info {
      // margin-top: 34px;
      // margin-left: 196px;
      left: 0px;
      top: 34px;
      // position: absolute;

      .location-icon {
        width: 20px;
        height: 20px;
      }
    }

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
        font-size: 16px;
        position: relative;
        // display: inline-block;
        z-index: 1;

        &::after {
          content: '';
          position: absolute;
          left: 0;
          bottom: 0;
          width: 100%;
          height: 40%;
          background-color: rgba(112, 135, 250, 0.3);
          z-index: -1;
        }
      }
    }
  }

  .store-stats {
    display: flex;
    justify-content: space-between;

    .stat-item {
      max-width: 70%;
      // display: space-between;

      .lable {
        margin-top: 10px;

        font-size: 16px;
        font-weight: 400;
        letter-spacing: 0px;
        line-height: 22.4px;
        color: rgba(10, 31, 55, 0.6);
        text-align: left;
        vertical-align: top;
      }

      .value {
        margin-top: 10px;

        font-size: 32px;
        font-weight: 700;
        letter-spacing: 1px;
        line-height: 32px;
        color: rgba(0, 0, 0, 0.9);
        text-align: left;
        vertical-align: top;
      }
    }
  }
}
</style>
