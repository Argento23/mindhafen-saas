# Guía de Publicación Rápida (Opción A)

Como quieres publicar ya mismo, usaremos el método más rápido y seguro que no requiere instalar comandos complejos en tu terminal.

### Paso 1: Preparar los archivos
Tu carpeta `mindhafen` ya tiene todo lo necesario:
- `index.html` (Tu portada)
- `style.css` (Diseño)
- `script.js` (Lógica)
- `assets/` (Imágenes)

### Paso 2: Usar Netlify Drop (El método de 1 minuto)
1. Ve a [app.netlify.com/drop](https://app.netlify.com/drop).
2. Abre tu explorador de archivos en tu computadora.
3. Busca la carpeta `mindhafen` dentro de `Downloads/neurova`.
4. **Arrastra la carpeta completa** `mindhafen` y suéltala en el recuadro gris de la página de Netlify.
5. Espera unos segundos... ¡y listo! Te dará una URL (ej. `fabulous-gelato-12345.netlify.app`).

### Paso 3: Configurar Dominio (Opcional)
Si tienes un dominio propio, en el panel de Netlify busca "Domain Settings" y sigue las instrucciones para conectarlo.

---

# Guía de Automatización con n8n (Opción B)

Ya he creado el archivo de flujo para ti.

### Paso 1: Importar el Flujo
1. Abre tu **n8n**.
2. Crea un nuevo Workflow.
3. Busca la opción "Import from File" o "Code View".
4. Copia y pega el contenido del archivo `workflows/n8n_workflow_v1.json` que he creado en tu carpeta.

### Paso 2: Conectar las Credenciales
Verás 3 nodos principales. Tienes que configurarlos:

1.  **Webhook Node**:
    *   Verifica que la URL coincida con la que pusimos en tu `script.js`.
    *   Método: `POST`.
    *   Abre el nodo y asegúrate de que esté activo.

2.  **OpenAI Node (Generar Respuesta)**:
    *   Tendrás que agregar tu **API Key de OpenAI**.
    *   He pre-configurado el prompt, pero necesitarás copiar el contenido de `data/content_repository.json` y `data/system_prompt.md` dentro de la variable de contexto (o usar un nodo "Read File" en n8n si lo ejecutas localmente).

3.  **Email Node**:
    *   Configura tus credenciales SMTP (ej. Gmail con App Password) para que los correos salgan desde tu dirección profesional.

### Paso 3: Activar
1. Guarda el workflow.
2. Haz clic en **Active** (arriba a la derecha).
3. Prueba llenar el formulario en tu web (ya publicada). ¡Deberías recibir un email generado por IA!
