# ENTORNO DE CONTENIDO (CONTENT ENVIRONMENT)

Este documento detalla la configuración técnica para transformar los scripts en material final (MP3 y PDF).

## 1. GENERACIÓN DE AUDIOS (MP3) - OPCIONES GRATUITAS
Para generar los audios de MindHafen sin costo, puedes usar estas herramientas:

*   **Clipchamp (Recomendado para Windows):** Editor de video gratuito de Windows que usa las voces de Microsoft Azure (excelente calidad en español). Exporta a video y luego convierte a MP3.
*   **TTSMaker (ttsmaker.com):** Web gratuita muy generosa con los caracteres. Permite descargar el MP3 directo sin registros complicados.
*   **ElevenLabs (Máxima Calidad):** Plan gratuito de 10,000 caracteres/mes. Es la voz más humana disponible actualmente.

### Parámetros de voz recomendados:
*   **Estilo:** Calma, profundo, profesional.
*   **Velocidad (Speaking Rate):** `0.9` a `0.95`.
*   **Tono (Pitch):** Bajalo un poco (aprox -2.0) para sonar más "terapéutico".
*   **Post-procesamiento:**
    *   Añadir música de fondo (Ambiental/Binaural) a -20dB.
    *   Exportar como: `MP3`, `128kbps`, `44.1kHz`.

## 2. GENERACIÓN DE GUÍAS (PDF)
*   **Herramienta:** Canva (Modo "A4 Document") o Google Docs con exportación a PDF.
*   **Tipografía:** `Outfit` (Headings) y `Inter` (Body).
*   **Paleta de Colores:** 
    *   Escuro: `#0f172a`
    *   Acento: `#3b82f6` (Azul) y `#10b981` (Verde).
*   **Estructura del PDF:**
    1. Portada con Logo.
    2. Índice.
    3. La Ciencia (Brief).
    4. El Protocolo (Paso a paso con iconos).
    5. Plan de Acción Semanal.

## 3. ALOJAMIENTO (HOSTING)
*   **Ruta:** `/code/mindhafen/downloads/`
*   **Nomenclatura (Estricta):**
    *   `Guia_Descompresion_MindHafen.pdf`
    *   `Modulo_01_Audio_Neural.mp3`

## 4. AUTOMATIZACIÓN (N8N)
Si deseas que el sistema envíe los archivos por email:
*   Usa el nodo **"Brevo"** con el parámetro `Attachment`.
*   El archivo debe descargarse primero con un nodo **"HTTP Request"** y luego adjuntarse.
