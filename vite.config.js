import { resolve } from 'path'
import { defineConfig } from 'vite'
import { fileURLToPath } from 'url'
import { dirname } from 'path'

const __filename = fileURLToPath(import.meta.url)
const __dirname = dirname(__filename)

export default defineConfig({
    base: './',
    build: {
        outDir: 'dist',
        rollupOptions: {
            input: {
                main: resolve(__dirname, 'index.html'),
                dashboard: resolve(__dirname, 'dashboard.html'),
                biblioteca: resolve(__dirname, 'biblioteca.html'),
                'guia-descompresion': resolve(__dirname, 'guia-descompresion.html'),
                'protocolo-sueno': resolve(__dirname, 'protocolo-sueno.html'),
                'control-ansiedad': resolve(__dirname, 'control-ansiedad.html'),
                legal: resolve(__dirname, 'legal.html'),
                links: resolve(__dirname, 'links.html'),
                qrcode: resolve(__dirname, 'qrcode.html'),
                success: resolve(__dirname, 'success.html'),
                failure: resolve(__dirname, 'failure.html'),
                pending: resolve(__dirname, 'pending.html'),
                'test-premium': resolve(__dirname, 'test_premium.html'),
            },
        },
    },
})
