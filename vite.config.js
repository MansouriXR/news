export default {
  base: './',
  build: {
    outDir: 'dist',
    assetsDir: 'assets',
    rollupOptions: {
      output: {
        manualChunks: undefined,
      },
    },
    minify: 'terser',
    sourcemap: false,
    assetsInlineLimit: 0,
    copyPublicDir: true
  },
  publicDir: 'public'
}
