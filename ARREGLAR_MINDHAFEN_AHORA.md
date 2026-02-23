# ⚡ ARREGLAR MINDHAFEN - GUÍA COMPLETA

## 🎯 OBJETIVO
Hacer que el formulario funcione en https://mindhafen.generarise.space

---

## 📋 PASO 1: ACTIVAR WEBHOOK EN N8N (3 minutos)

### 1.1 Ir a n8n
```
URL: https://manager.generarise.space
```

### 1.2 Importar el workflow con CORS
```
1. Clic en "Workflows" (menú izquierdo)
2. Clic en "+ Importar" o "Import from File"
3. Seleccionar archivo:
   c:\Users\Gustavo\Downloads\neurova\mindhafen\workflows\n8n_webhook_CORS_FIX.json
   *(He corregido este archivo automáticamente hoy para que coincida con el script)*
4. Clic "Import"
```

### 1.3 Activar el workflow
```
1. El workflow se abrirá automáticamente
2. Esquina superior derecha → Toggle "Active"
3. Debe cambiar a VERDE ✅
```

### 1.4 Verificar
```
Debe verse así:
┌──────────────────────────────────┐
│ MindHafen - Webhook con CORS     │
│                    [Active ✓] ←VERDE
└──────────────────────────────────┘

Si dice "Inactive" o está gris → Clic en el toggle
```

---

## 📋 PASO 2: SUBIR SCRIPT.JS AL SERVIDOR (5 minutos)

### 2.1 Abrir el archivo local
```
1. Abrir: c:\Users\Gustavo\Downloads\neurova\mindhafen\script.js
2. Seleccionar TODO el contenido (Ctrl + A)
3. Copiar (Ctrl + C)
```

### 2.2 Ir a Easypanel
```
URL: (Tu URL de Easypanel)
```

### 2.3 Navegar al proyecto
```
1. Projects → Buscar "MindHafen" o el proyecto donde está /code/mindhafen
2. Clic en el proyecto
```

### 2.4 Editar el archivo
```
1. Clic en "Files" (o pestaña Files)
2. Navegar a: /code/mindhafen/
3. Buscar y clic en: script.js
4. Clic en "Edit" o el icono de editar
```

### 2.5 Reemplazar contenido
```
1. Seleccionar TODO el contenido actual (Ctrl + A)
2. Pegar el contenido nuevo (Ctrl + V)
3. Clic "Save" o "Guardar"
```

### 2.6 Reiniciar (Opcional, pero recomendado)
```
En Easypanel:
1. Volver a la vista del proyecto
2. Clic en "Restart" o reiniciar el servicio
3. Esperar 30 segundos
```

---

## ✅ PASO 3: PROBAR (2 minutos)

### 3.1 Hacer "Hard Refresh" del sitio
```
1. Ir a: https://mindhafen.generarise.space
2. Presionar: Ctrl + Shift + R
   (Esto limpia la caché del navegador)
```

### 3.2 Abrir consola
```
Presionar F12
Ir a pestaña "Console"
```

### 3.3 Verificar logs de inicio
```
Deberías ver:
✅ MindHafen Form Script cargado
🔗 Webhook URL: https://manager.generarise.space/webhook/...
🏠 Entorno: PRODUCCIÓN

Si dice "PRODUCCIÓN" → ✅ Correcto
Si dice "LOCAL" → ❌ No se actualizó, repetir Paso 2
```

### 3.4 Llenar formulario
```
Nombre: Tu Nombre
Email: tu@email.com
Objetivo: Cualquiera
```

### 3.5 Enviar
```
Clic en "Descargar Guía y Acceder"
```

### 3.6 Resultado esperado
```
✅ Popup verde: "¡Bienvenido a MindHafen!"
✅ Formulario se limpia
✅ En consola:
    * Path: mindhafen-registro: {...}
    🌐 Enviando a webhook: ...
    📥 Respuesta recibida: 200 OK
    ✅ Éxito: {success: true, ...}
```

---

## 🚨 SI SIGUE SIN FUNCIONAR

### Error: "Webhook No Encontrado"
```
Causa: El workflow no está activo en n8n
Solución: Repetir Paso 1.3 (Activar toggle)
```

### Error: Sigue diciendo error CORS
```
Causa: El script.js no se actualizó
Solución: 
1. Verificar en consola que diga "PRODUCCIÓN"
2. Si dice "LOCAL", repetir Paso 2
3. Hacer Ctrl + Shift + R para limpiar caché
```

### Error: En consola dice "LOCAL" en vez de "PRODUCCIÓN"
```
Causa: El navegador cargó el script.js viejo desde caché
Solución:
1. Ctrl + Shift + R (hard refresh)
2. Si persiste, cerrar y reabrir el navegador
3. Si aún persiste, el archivo no se subió correctamente → Repetir Paso 2
```

---

## 📞 CHECKLIST FINAL

Antes de decir que está roto, verificar:

- [ ] Importé n8n_webhook_CORS_FIX.json en n8n
- [ ] El workflow está ACTIVO (toggle verde)
- [ ] Copié TODO el contenido de script.js local
- [ ] Pegué el contenido en Easypanel → /code/mindhafen/script.js
- [ ] Guardé el archivo
- [ ] Hice Ctrl + Shift + R en el navegador
- [ ] En consola (F12) dice "🏠 Entorno: PRODUCCIÓN"
- [ ] Al enviar formulario veo los logs con emojis (📤 🌐 📥 ✅)

---

## 🎉 DESPUÉS DE QUE FUNCIONE

Este es un webhook mínimo (solo responde OK). Para agregar:
- ✅ Envío de emails
- ✅ Guardar en Google Sheets
- ✅ IA personalizada (Groq)

Importa después el workflow completo: `n8n_workflow_PRODUCTION_v2.json`
Y configura las credenciales.

---

**Tiempo total estimado:** 10 minutos

**Última actualización:** 2026-01-24
