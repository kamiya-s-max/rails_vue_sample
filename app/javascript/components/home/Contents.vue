<template>
  <div>
    <table class="contents-table">
      <tr>
        <th>名前</th>
        <th>リンク</th>
      </tr>
      <tr v-for="outer_link in contents.outer_links" v-bind:key="outer_link.name">
        <td>{{ outer_link.name }}</td>
        <td>
          <a v-bind:href="outer_link.url">{{ outer_link.text }}</a>
        </td>
      </tr>
    </table>
  </div>
</template>
<style scoped></style>
<script>
export default {
  props: {
    contents: {
      type: Object,
      default: () => {}
    }
  }
};
</script>