# 🧠 MODELO DE NEGOCIO MINDHAFEN - Plan Completo

## 📊 RESUMEN EJECUTIVO

**Concepto:** Plataforma de salud mental digital basada en neurociencia, 100% automatizada, sin terapeutas humanos en MVP.

**Público:** Profesionales hispanohablantes (25-45 años) con estrés crónico, ansiedad, insomnio o problemas de enfoque.

**Precio:** $29 USD/mes (freemium con prueba gratuita de 7 días)

**Plazas Iniciales:** 100 usuarios (crear escasez artificial)

---

## 🎯 FLUJO COMPLETO DEL USUARIO

### FASE 1: Captación (Gratuito)
```
1. Usuario llena formulario en mindhafen.generarise.space
2. Selecciona objetivo: Reducir Estrés / Mejorar Enfoque / Dormir Mejor / Controlar Ansiedad
3. Recibe email automático (Groq AI) con:
   - Mensaje personalizado según su objetivo
   - Mini-consejo científico (2-3 líneas)
   - Guía PDF gratuita: "Descompresión Neuronal" (15 páginas)
   - CTA: "Accede al Programa Completo (Quedan X plazas)"
```

**Email de Bienvenida (Ejemplo - Estrés):**
```
Asunto: Bienvenido a MindHafen, [Nombre]

Hola [Nombre],

Gracias por unirte a MindHafen. Entiendo que tu objetivo principal es reducir 
el estrés crónico, y has dado el paso más importante: decidir tomar acción.

El estrés crónico ocurre cuando tu sistema nervioso entra en modo "alerta constante". 
La buena noticia: con técnicas de regulación vagal (respiración profunda y movimientos 
lentos), puedes entrenar tu cerebro para volver al estado de calma natural en solo 
15 minutos diarios.

📥 DESCARGA TU GUÍA GRATUITA:
[Botón: Descargar "Descompresión Neuronal"]

Esta guía incluye:
✓ 3 ejercicios de respiración validados científicamente
✓ Protocolo de 5 minutos para emergencias
✓ Explicación de cómo funciona tu sistema nervioso

🎯 ¿LISTO PARA EL SIGUIENTE NIVEL?

Si quieres acceso completo al programa con:
• 12 módulos interactivos (audio + PDF)
• Asistente IA 24/7 personalizado
• Tracking de progreso semanal

👉 [Botón: Acceder al Plan Completo - $29/mes]

⚠️ Quedan solo [X] plazas disponibles de 100 totales.

Con compromiso científico,
Equipo MindHafen
```

---

### FASE 2: Conversión (Primer Pago)
```
1. Usuario clic en botón → Redirige a Stripe Checkout
2. Opciones de pago:
   - Mensual: $29 USD/mes
   - Trimestral: $69 USD ($23/mes - 20% OFF)
   - Anual: $249 USD ($20.75/mes - 30% OFF)
3. Prueba gratis: 7 días (se cobra automático después)
4. Formas de pago: Tarjeta, Apple Pay, Google Pay
```

**Stripe Checkout Page:**
```
┌────────────────────────────────────────┐
│ 🧠 MindHafen - Plan Completo          │
├────────────────────────────────────────┤
│ ✓ 12 Módulos de Neuroplasticidad      │
│ ✓ Asistente IA Personalizado 24/7     │
│ ✓ Tracking de Progreso                │
│ ✓ Actualizaciones Mensuales           │
│ ✓ Acceso de por vida a contenido      │
├────────────────────────────────────────┤
│ 💳 $29 USD/mes                         │
│ 🎁 7 días gratis (cancela cuando quieras) │
└────────────────────────────────────────┘
   [Iniciar Prueba Gratuita →]
```

---

### FASE 3: Onboarding (Post-Pago)
```
1. Pago exitoso → Stripe envía webhook a n8n
2. n8n ejecuta workflow:
   a) Crea usuario en Airtable/Google Sheets
   b) Genera credenciales de acceso únicas
   c) Envía email de bienvenida con link de acceso
3. Usuario recibe en 1 minuto:
   - Email: "¡Bienvenido a MindHafen Premium!"
   - Link: https://app.mindhafen.generarise.space/login?token=XXX
   - Contraseña temporal
```

**Email Post-Pago:**
```
Asunto: ¡Bienvenido a MindHafen Premium! 🧠

Hola [Nombre],

¡Tu cuenta premium está lista! 🎉

🔐 ACCEDE AHORA:
Link: https://app.mindhafen.generarise.space
Email: [email del usuario]
Contraseña temporal: [auto-generada]
(Cámbiala en tu primer acceso)

📚 TU PROGRAMA COMPLETO INCLUYE:

MÓDULO 1: Fundamentos de Neuroplasticidad (Semana 1)
   - Audio guiado: 15 min
   - PDF descargable
   - Ejercicios prácticos

MÓDULO 2: Regulación del Sistema Nervioso (Semana 2)
   - Técnica del Suspiro Cíclico
   - Protocolo de 5 minutos

[... 10 módulos más]

🤖 TU ASISTENTE IA:
Desde hoy, tienes acceso a MindBot, tu coach personal 24/7.
Pregúntale cualquier duda sobre los ejercicios.

🎯 PRÓXIMOS PASOS:
1. Accede a la plataforma
2. Completa tu perfil de bienestar
3. Empieza el Módulo 1 (hoy)

Con compromiso científico,
Equipo MindHafen
```

---

## 📦 CONTENIDO Y FORMATOS

### TIER 1: Gratuito (Lead Magnet)
```
Guía PDF "Descompresión Neuronal" (15 páginas)
- 3 Ejercicios de respiración
- Protocolo de emergencia (5 min)
- Infografía del sistema nervioso
```

### TIER 2: Premium ($29/mes)
```
12 MÓDULOS PRINCIPALES (1 por semana)

Formato de cada módulo:
├── Audio instructivo (10-15 min MP3)
│   └── Narrado por voz IA (es-US-Neural2-B)
├── PDF descargable (8-12 páginas)
│   ├── Teoría científica
│   ├── Ejercicios paso a paso
│   └── Registro de progreso
└── Quiz interactivo (5 preguntas)

MÓDULOS:
1. Fundamentos de Neuroplasticidad
2. Regulación del Sistema Nervioso
3. Protocolo de Respiración Cíclica
4. Higiene del Sueño Neurológica
5. Gestión de Estrés Agudo
6. Control de Ansiedad con Fisiología
7. Mejora del Enfoque Ejecutivo
8. Construcción de Hábitos Duraderos
9. Resiliencia Mental
10. Manejo de Ataques de Pánico
11. Optimización del Descanso
12. Integración: Tu Plan Personalizado

BONUS:
- Asistente IA 24/7 (chat en la plataforma)
- Tracker de progreso visual
- Comunidad privada (Telegram/Discord - opcional)
```

---

## 💰 ESTRUCTURA DE PRECIOS

### Freemium Model:
```
TIER 1: Gratis
- Guía PDF inicial
- 1 email semanal con tips
- Sin acceso a módulos

TIER 2: Premium - $29/mes
- 12 módulos completos
- Asistente IA ilimitado
- Tracking de progreso
- Actualizaciones mensuales
- 7 días de prueba gratis

TIER 3: Anual - $249/año (ahorra $99)
- Todo lo de Premium
- 2 meses gratis
- Acceso anticipado a nuevos módulos
- Sesión de coaching grupal mensual (Zoom)
```

### Proyecciones de Ingresos:
```
MES 1 (100 plazas):
- 100 registros gratuitos
- 20% conversión = 20 pagos
- 20 × $29 = $580 USD

MES 3 (500 plazas):
- 500 registros
- 15% conversión = 75 pagos
- 75 × $29 = $2,175 USD

MES 6 (1000 plazas):
- 1000 registros
- 10% conversión = 100 pagos
- 100 × $29 = $2,900 USD/mes
```

---

## 🗓️ PERIODICIDAD Y ENTREGA

### Ritmo de Liberación de Contenido:
```
SEMANA 1: Módulo 1 + Bienvenida
SEMANA 2: Módulo 2
SEMANA 3: Módulo 3
...
SEMANA 12: Módulo 12

Después de completar:
- Certificado digital de finalización
- Acceso permanente a todo el material
- Continúa recibiendo actualizaciones mensuales
```

### Comunicación con el Usuario:
```
DIARIA:
- Asistente IA disponible 24/7 (responde en <1 min)

SEMANAL:
- Email: "Tu progreso esta semana"
- Nuevo módulo desbloqueado
- Tip científico breve

MENSUAL:
- Reporte de progreso (dashboard visual)
- Nuevo contenido bonus (opcional)
- Encuesta de satisfacción
```

---

## 📍 ALOJAMIENTO DE MATERIALES

### Arquitectura:
```
FRONT-END (Público):
├── mindhafen.generarise.space
│   └── Landing + Formulario (ya funciona ✅)

APP (Privado - Solo usuarios premium):
├── app.mindhafen.generarise.space
│   ├── Login con Magic Link (sin contraseña)
│   ├── Dashboard de usuario
│   ├── Biblioteca de módulos
│   ├── Chat con IA
│   └── Tracker de progreso

BACKEND:
├── manager.generarise.space/n8n
│   ├── Flujos de automación
│   ├── Webhooks (Stripe, formulario)
│   └── Orquestación de IA

CONTENIDO:
├── Google Cloud Storage / Cloudflare R2
│   ├── Audios MP3 (cada uno ~15MB)
│   ├── PDFs (cada uno ~2MB)
│   └── Imágenes (infografías)

BASE DE DATOS:
├── Airtable o PostgreSQL
│   ├── Tabla: usuarios
│   ├── Tabla: suscripciones
│   ├── Tabla: progreso
│   └── Tabla: control_plazas
```

---

## 🎫 SISTEMA DE PLAZAS LIMITADAS

### Lógica de Control:
```javascript
// En n8n, antes de enviar email con link de pago:

1. Consultar Google Sheet: "control_plazas"
   Columnas: [total_plazas, plazas_usadas, disponibles]

2. Si disponibles > 0:
   → Enviar email con link de Stripe
   → Incrementar "plazas_usadas"

3. Si disponibles = 0:
   → Enviar email: "Lista de espera"
   → Guardar en tabla "waitlist"
   → Cuando liberemos plazas, enviar notificación
```

### Estrategia de Escasez:
```
LANZAMIENTO (Mes 1): 100 plazas
EXPANSIÓN (Mes 2): +200 plazas (total 300)
ESCALA (Mes 3): +500 plazas (total 800)

Mensaje en landing:
"⚠️ Quedan [X] plazas de [TOTAL] disponibles"

Actualización en tiempo real:
- Cada vez que alguien paga, disminuye contador
- Webhook de Stripe → n8n → Actualiza Sheet
```

---

## 🌍 IDIOMAS

### MVP (Actual):
```
✅ Español (es-US y es-ES)
- Todo el contenido
- Emails
- Asistente IA
```

### Roadmap de Idiomas (Futuro):
```
FASE 2 (Mes 6):
- Inglés (en-US)
- Portugués (pt-BR)

FASE 3 (Mes 12):
- Francés (fr-FR)
- Alemán (de-DE)
```

### Implementación Multi-idioma:
```
En formulario de registro, agregar:
<select name="language">
  <option value="es">Español</option>
  <option value="en">English (Coming soon)</option>
</select>

En n8n:
- Detectar idioma del usuario
- Cargar content_repository_[idioma].json
- Usar prompt_[idioma].md
- Enviar emails en idioma correcto
```

---

## 📧 MATERIALES A CREAR

### PRIORIDAD ALTA (Semana 1-2):
- [ ] Guía PDF "Descompresión Neuronal" (15 pág)
- [ ] Módulo 1 PDF: Neuroplasticidad (10 pág)
- [ ] Módulo 1 Audio: Script + Generación con TTS (15 min)
- [ ] Email templates (Bienvenida, Post-pago, Recordatorios)
- [ ] Dashboard básico de usuario (HTML/CSS/JS simple)

### PRIORIDAD MEDIA (Semana 3-4):
- [ ] Módulos 2-6 (PDF + Audio)
- [ ] Asistente IA (integración Groq + historial de chat)
- [ ] Tracker de progreso (Google Sheets + gráficos Chart.js)

### PRIORIDAD BAJA (Mes 2+):
- [ ] Módulos 7-12
- [ ] Certificado digital
- [ ] Comunidad privada
- [ ] App móvil (PWA)

---

## 🛠️ STACK TÉCNICO COMPLETO

```
FRONTEND:
- HTML/CSS/JS (Vanilla)
- Chart.js (gráficos de progreso)
- PWA (para app móvil)

BACKEND:
- n8n (orquestación)
- Groq (IA conversacional)
- Google Cloud TTS (narración audios)

PAGOS:
- Stripe (suscripciones recurrentes)
- Webhooks para automatización

ALMACENAMIENTO:
- Google Cloud Storage (contenido multimedia)
- Airtable / PostgreSQL (datos usuarios)

EMAIL:
- Brevo / SendGrid (transaccional)
- Templates HTML responsive

ANALYTICS:
- Google Analytics 4
- Plausible (alternativa privada)
```

---

## 📈 KPIs A MEDIR

```
CAPTACIÓN:
- Registros gratuitos/día
- Fuente de tráfico (orgánico, ads, referidos)
- Tasa de abandono del formulario

CONVERSIÓN:
- % de gratuitos → Premium
- Tiempo promedio hasta compra
- Motivo de abandono (encuesta)

RETENCIÓN:
- Churn rate mensual (% que cancela)
- Módulos completados promedio
- Engagement con IA (mensajes/semana)

INGRESOS:
- MRR (Monthly Recurring Revenue)
- LTV (Lifetime Value) promedio
- CAC (Costo de Adquisición de Cliente)
```

---

## ✅ PRÓXIMOS PASOS INMEDIATOS

1. **HOY:** Crear cuenta Stripe + Link de pago de prueba
2. **Esta semana:** Escribir Guía PDF "Descompresión Neuronal"
3. **Semana 2:** Configurar workflow n8n → Stripe → Email
4. **Semana 3:** Crear dashboard básico de usuario
5. **Mes 2:** Producir Módulos 1-6

---

**Última actualización:** 2026-01-24  
**Versión:** Business Model v1.0
