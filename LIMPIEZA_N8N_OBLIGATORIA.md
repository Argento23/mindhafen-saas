# 🧹 Limpieza de Workflows en n8n

Para que el Chat y el Plan Premium funcionen sin errores de conexión, debes eliminar las versiones viejas que están causando choques de nombres.

### 1. Borrar/Desactivar Workflows Duplicados
En tu n8n, busca y **desactiva o borra** estos workflows antiguos:
- `MindHafen - MercadoPago + Email Workflow`
- `MindHafen - Registro + AI Response (PRODUCTION)` (cualquier versión que NO sea la v3_html)
- `n8n_workflow_PRODUCTION_v2`
- `n8n_workflow_MINIMAL`
- `n8n_webhook_CORS_FIX`

### 2. Importar los 3 Workflows Correctos
Importa y **ACTIVA** únicamente estos archivos que están en tu carpeta `mindhafen/workflows/`:
1.  ✅ `mindhafen_production_v3_html.json` (Registro)
2.  ✅ `mindhafen_ai.json` (Chat Mentor IA)
3.  ✅ `mindhafen_checkout.json` (Plan Premium)

### 3. Verificar en n8n
Entra en cada uno de los 3 nuevos workflows y verifica:
- Que el nodo **Webhook** diga "Active".
- Que en **Settings** del Webhook, en la pestaña "Options", esté activado "Allowed Origins: *".
- Que hayas guardado los cambios.

---
**Una vez hecho esto, el error de "Problema de conexión" desaparecerá.**
