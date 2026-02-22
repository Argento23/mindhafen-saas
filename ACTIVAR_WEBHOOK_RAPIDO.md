# ⚡ ACTIVAR WEBHOOK EN 3 PASOS (30 SEGUNDOS)

## 🎯 OBJETIVO
Hacer que el formulario funcione AHORA. Sin emails, sin IA, sin nada complicado.

---

## 📝 PASOS

### 1️⃣ **Ir a n8n**
```
URL: https://manager.generarise.space
```

### 2️⃣ **Importar el workflow mínimo**
```
1. Clic en "Workflows" (menú izquierdo)
2. Clic en botón "+ Importar" o "Import from File"
3. Seleccionar archivo: n8n_workflow_MINIMAL.json
   (Está en: c:\Users\Gustavo\Downloads\neurova\mindhafen\workflows\)
4. Clic "Import"
```

### 3️⃣ **Activar**
```
1. El workflow se abrirá automáticamente
2. En la esquina superior derecha → Toggle "Active"
3. Debe cambiar a verde ✅
```

---

## ✅ **LISTO - PROBAR**

### Paso 1: Abrir el sitio
```
https://mindhafen.generarise.space
```

### Paso 2: Llenar formulario
```
Nombre: Tu nombre
Email: tu@email.com
Objetivo: Cualquiera
```

### Paso 3: Enviar
```
Clic en "Descargar Guía y Acceder"
```

### Paso 4: Resultado esperado
```
✅ Popup verde: "¡Bienvenido a MindHafen!"
✅ Formulario se limpia
✅ Sin errores
```

---

## 🔍 **QUÉ HACE ESTE WORKFLOW (Simplificado)**

```
Usuario llena form
     ↓
Webhook recibe datos
     ↓
Procesa datos (solo log)
     ↓
Responde: "success: true"
     ↓
Navegador muestra popup verde ✅
```

**Lo que NO hace (por ahora):**
- ❌ NO envía email
- ❌ NO guarda en Google Sheets
- ❌ NO usa IA

**Ventajas:**
- ✅ Funciona en 30 segundos
- ✅ No necesita credenciales
- ✅ Confirma que todo lo demás funciona

---

## 🆙 **DESPUÉS - UPGRADE A VERSIÓN COMPLETA**

Una vez que esto funcione, puedes:

1. **Desactivar** este workflow
2. **Importar** el workflow completo: `n8n_workflow_PRODUCTION_v2.json`
3. **Configurar** credenciales (Groq, Sheets, SMTP)
4. **Activar** el workflow completo

---

## 🚨 **TROUBLESHOOTING**

### Si sigue sin funcionar después de activar:

1. **Verificar que está ACTIVO:**
   ```
   En n8n → Workflows → Ver el workflow
   Debe decir "Active" en verde
   ```

2. **Verificar el webhook ID:**
   ```
   Abrir el workflow → Clic en nodo "Webhook"
   Path debe ser: 8f7cbf0e-4ac0-4660-a524-9af706728a52
   ```

3. **Ver ejecuciones:**
   ```
   En n8n → Executions (menú izquierdo)
   Envía el form y mira si aparece una ejecución
   Si aparece pero con error → Clic para ver detalles
   ```

4. **Reiniciar n8n:**
   ```
   Easypanel → Services → n8n → Restart
   Esperar 1 minuto
   Intentar de nuevo
   ```

---

## 📸 **CÓMO SABER SI ESTÁ ACTIVO**

Cuando abras el workflow en n8n, deberías ver:

```
┌─────────────────────────────────────┐
│  MindHafen - Webhook MÍNIMO         │
│                    [Active ✓]  ← VERDE
└─────────────────────────────────────┘
```

Si dice "Inactive" o está en gris → Clic en el toggle.

---

**Después de activar, dime si funcionó o qué error te da.**
