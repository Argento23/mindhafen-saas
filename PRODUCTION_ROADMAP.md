# Roadmap de Producción: MindHafen 1.0

Este documento detalla el flujo técnico y operativo para llevar MindHafen de un prototipo local a un negocio digital automatizado y monetizable.

## 1. Publicación (Deploy)
**Objetivo:** Que el mundo pueda acceder a `www.mindhafen.com` (o similar).

*   **Proceso:**
    1.  Subir el código actual (HTML/CSS/JS/Assets) a un proveedor de hosting estático.
    2.  Conectar un dominio personalizado.
*   **Herramientas Recomendadas:**
    *   **Vercel** o **Netlify**: Son gratuitos para este tipo de sitios, incluyen SSL (candadito seguro) y son extremadamente rápidos.
*   **Qué necesito de ti:**
    *   Crear una cuenta en [Vercel.com](https://vercel.com) o [Netlify.com](https://netlify.com).
    *   (Opcional) Haber comprado un dominio (ej. en Namecheap o GoDaddy).

## 2. Captura y Derivación a la IA
**Objetivo:** Que cuando alguien llene el formulario, una IA analice su caso y le responda.

*   **Flujo Actual:** Usuario llena Form -> Webhook (`agentes.space`) -> [VACÍO].
*   **Flujo Nuevo (Requerido):**
    1.  **Webhook de Entrada**: Recibe JSON `{nombre, email, objetivo}`.
    2.  **Orquestador (n8n/Make)**:
        *   Toma los datos.
        *   Lee el archivo `content_repository.json` (que le pasamos como contexto).
        *   Usa el `system_prompt.md` para generar una respuesta personalizada.
    3.  **Salida**: Envía un email al usuario con su "Diagnóstico Inicial" y el siguiente paso (pagar).
*   **Qué necesito de ti:**
    *   Acceso a la configuración del Webhook en `agentes.space` para decirle qué hacer con los datos (¿Tienes acceso al panel de control de ese webhook?).

## 3. Monetización y Suscripción (Medios de Pago)
**Objetivo:** Cobrar por el acceso completo a las guías o al coaching.

*   **Estrategia MVP (Producto Mínimo Viable):**
    *   No construir un sistema de usuarios/login complejo todavía.
    *   Usar **Stripe Payment Links**.
*   **Proceso:**
    1.  El usuario recibe el email de la IA con un botón: "Desbloquear Plan Completo por $29".
    2.  Clic -> Va a una página segura de Stripe.
    3.  Paga (Tarjeta/Apple Pay).
    4.  Stripe avisa a tu sistema (otro Webhook) -> Tu sistema envía el PDF o acceso al contenido.
*   **Plazas (Escasez):**
    *   Para limitar plazas, usamos una base de datos simple (ej. Airtable o Google Sheets conectado al orquestador).
    *   *Lógica:* Antes de enviar el link de pago, el sistema consulta: `¿Inscritos < 100?`. Si Sí -> Envía link. Si No -> Envía "Lista de Espera".
*   **Qué necesito de ti:**
    *   Cuenta de **Stripe** (o MercadoPago si es solo Latam, pero Stripe es mejor globalmente).

## Resumen de Arquitectura

```mermaid
graph TD
    A[Usuario Web] -->|Llena Formulario| B(Webhook / API)
    B --> C{Orquestador IA}
    C -->|Consulta| D[Base de Conocimiento JSON]
    C -->|Verifica Cupo| E[Control de Plazas (Airtable/DB)]
    E -->|Hay lugar| F[Generar Respuesta + Link de Pago]
    E -->|Lleno| G[Email Lista de Espera]
    F --> H[Email del Usuario]
    H -->|Click Pagar| I[Stripe Checkout]
    I -->|Pago Exitoso| J[Entrega del Producto]
```

## Próximos Pasos Inmediatos

1.  **Publicar la Web**: Subir los archivos a Vercel/Netlify.
2.  **Configurar el Cerebro**: Configurar la lógica detrás del Webhook actual (¿Quién procesa ese webhook hoy?).
3.  **Crear Producto en Stripe**: Generar el link de cobro.
