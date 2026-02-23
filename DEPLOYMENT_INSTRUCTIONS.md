# 🚀 Instrucciones de Despliegue - MindHafen

> [!IMPORTANT]
> **SI EL DESPLIEGUE SE QUEDA "COLGADO" (PENSANDO):**
> Es porque tu servidor está intentando subir archivos pesados que no necesitamos (como los .zip de 350MB).
> 
> **SOLUCIÓN RÁPIDA (3 PASOS):**
> 1. Asegúrate de que el archivo `.dockerignore` esté en la carpeta principal. (Ya lo creé por ti).
> 2. En Easypanel, ve a la pestaña **Deploy** y busca el botón **"Deploy without cache"** (Desplegar sin caché).
> 3. Si usas la pestaña **Files**, asegúrate de que estás dentro de la carpeta `/code/mindhafen`.

## ✅ CAMBIOS IMPLEMENTADOS


### HTML (index.html)
- ✅ Meta tags SEO completos (título, descripción, keywords)
- ✅ Open Graph tags para redes sociales
- ✅ Twitter Cards
- ✅ Menú móvil hamburguesa
- ✅ Sección "Guías Gratuitas" (#guides) completamente funcional
- ✅ Sección "Nosotros" (#about) con estadísticas
- ✅ Footer profesional con enlaces

### CSS (style.css)
- ✅ Estilos para menú móvil responsive
- ✅ Animaciones del overlay de menú
- ✅ Estilos para las nuevas secciones (guides, about, footer)
- ✅ Tarjetas de guías con hover effects
- ✅ Estadísticas visuales en la sección About

### JavaScript (script.js)
- ✅ Funcionalidad completa de menú móvil
- ✅ Smooth scroll para navegación
- ✅ Manejo mejorado de errores del formulario

---

## 🔴 PROBLEMAS CRÍTICOS A RESOLVER (Por el usuario)

### 1. Arreglar Error 502 en Easypanel

**Paso a paso:**

1. **Acceder a Easypanel**
   ```
   URL: https://panel.easypanel.io (o tu panel)
   ```

2. **Localizar el Proyecto MindHafen**
   - Ve a "Projects"
   - Busca "mindhafen" o "generarise"

3. **Verificar Logs**
   ```
   Clic en el proyecto → Logs
   Buscar errores tipo:
   - "Port already in use"
   - "Container exited"
   - "Failed to start"
   ```

4. **Reiniciar el Servicio**
   ```
   En el panel:
   1. Detener el servicio (Stop)
   2. Esperar 10 segundos
   3. Iniciar nuevamente (Start)
   ```

5. **Verificar la Configuración de Puerto**
   ```
   Asegúrate que:
   - Puerto interno: 80 o 3000 (según tu servidor)
   - Puerto externo: 443 (HTTPS)
   - Proxy configurado correctamente
   ```

---

### 2. Activar el Webhook de n8n

**Paso a paso:**

1. **Acceder a n8n**
   ```
   URL: https://manager.generarise.space
   ```

2. **Localizar el Workflow**
   - Busca el workflow llamado "MindHafen MVP Flow"
   - O cualquier workflow que tenga el Webhook ID: `8f7cbf0e-4ac0-4660-a524-9af706728a52`

3. **Activar el Workflow**
   ```
   1. Abrir el workflow
   2. Clic en el toggle "Active" (esquina superior derecha)
   3. Verificar que diga "Active" en verde
   ```

4. **Verificar Configuración CORS**
   
   En el nodo Webhook, asegúrate de tener:
   ```json
   {
     "httpMethod": "POST",
     "path": "8f7cbf0e-4ac0-4660-a524-9af706728a52",
     "options": {
       "responseMode": "responseNode",
       "responseData": "firstEntryJson"
     },
     "responseHeaders": {
       "Access-Control-Allow-Origin": "*",
       "Access-Control-Allow-Methods": "POST, OPTIONS",
       "Access-Control-Allow-Headers": "Content-Type"
     }
   }
   ```

5. **Probar el Webhook Manualmente**
   
   Desde PowerShell:
   ```powershell
   $body = @{
       name = "Test User"
       email = "test@example.com"
       goal = "stress_reduction"
       source = "production_test"
   } | ConvertTo-Json

   Invoke-RestMethod -Uri "https://manager.generarise.space/webhook/8f7cbf0e-4ac0-4660-a524-9af706728a52" `
       -Method POST `
       -ContentType "application/json" `
       -Body $body
   ```

   **Resultado esperado:** Deberías recibir una respuesta exitosa (status 200)

---

## 📤 SUBIR CAMBIOS A PRODUCCIÓN

### Opción A: Easypanel con Git (Recomendado si usas GitHub)

1. **Commit los cambios**
   ```bash
   git add .
   git commit -m "Fix: Mobile menu + SEO + New sections"
   git push origin main
   ```

2. **Easypanel detectará automáticamente los cambios** y hará redeploy

### Opción B: Subida a Easypanel (Pestaña "Files")

Si no usas GitHub, haz esto para aplicar mis cambios:

1. **Abre Easypanel** y ve a tu proyecto de MindHafen.
2. Ve a la pestaña **Files**.
3. **Sube los archivos que yo modifiqué** (están en tu computadora en `c:\Users\Gustavo\Downloads\neurova\mindhafen\`):
   - `index.html`, `dashboard.html`, `vite.config.js`, `package.json`, `script.js`.
4. Una vez subidos, ve a la pestaña **Deploy** y presiona el botón para que el servidor se actualice.


---

## 🧪 TESTING POST-DESPLIEGUE

### 1. Probar en Desktop
- ✅ Navegación funciona (Cómo funciona, Guías, Nosotros)
- ✅ Formulario se envía correctamente
- ✅ Animaciones suaves

### 2. Probar en Móvil
- ✅ Menú hamburguesa se abre/cierra
- ✅ Navegación móvil funciona
- ✅ Formulario responsive

### 3. Probar Formulario
1. Llenar nombre, email, objetivo
2. Clic en "Descargar Guía y Acceder"
3. **Resultado esperado:**
   - Mensaje de éxito con SweetAlert2
   - Formulario se limpia
   - Email recibido (verificar bandeja de entrada)

---

## 📊 CHECKLIST FINAL ANTES DE LANZAMIENTO

### Técnico
- [ ] Error 502 resuelto (sitio accesible)
- [ ] Webhook de n8n activado y funcionando
- [ ] Formulario probado con email real
- [ ] Navegación móvil funcional
- [ ] Todas las secciones visibles

### Contenido
- [ ] Revisar textos de las secciones nuevas
- [ ] Actualizar estadísticas en "Nosotros" si es necesario
- [ ] Reemplazar enlaces de descarga de PDFs con URLs reales

### Marketing
- [ ] Configurar Google Analytics (opcional)
- [ ] Crear imagen para Open Graph (og:image)
- [ ] Probar cómo se ve en redes sociales (Facebook, Twitter)

---

## 🆘 TROUBLESHOOTING

### Problema: "El menú móvil no aparece"
**Solución:** Verifica que `script.js` se cargue correctamente. Abre la consola del navegador (F12) y busca errores.

### Problema: "El formulario sigue sin funcionar"
**Solución:** 
1. Verifica que el webhook esté activo en n8n
2. Revisa los logs de n8n para ver si llegan las peticiones
3. Prueba el webhook manualmente con el comando PowerShell de arriba

### Problema: "Error 404 al acceder a subpáginas"
**Solución:** 
Vite por defecto solo construye `index.html`. Asegúrate de:
1. Haber subido el archivo `vite.config.js` que creamos.
2. Si usas Nginx directamente, usa esta configuración para que las URLs sin `.html` funcionen:
   ```nginx
   location / {
       try_files $uri $uri.html $uri/ /index.html;
   }
   ```


---

## 📞 PRÓXIMOS PASOS

1. **Hoy:**
   - Arreglar error 502
   - Activar webhook
   - Subir cambios a producción
   - Probar formulario

2. **Esta semana:**
   - Subir PDFs de guías reales
   - Configurar email automation completa
   - Agregar Analytics

3. **Próxima semana:**
   - Integrar Stripe para pagos
   - Configurar sistema de plazas limitadas
   - Testing completo del flujo end-to-end

---

**Última actualización:** 2026-01-24  
**Autor:** Antigravity AI
