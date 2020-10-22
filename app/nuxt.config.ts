import { NuxtConfig } from '@nuxt/types'
import Fiber from 'fibers'
import Sass from 'sass'

export default {
  buildModules: ['@nuxt/typescript-build'],
  build: {
    loaders: {
      scss: {
        implementation: Sass,
        sassOptions: {
          fiber: Fiber
        }
      }
    }
  },
  css: ['~assets/scss/main.scss']
} as NuxtConfig
