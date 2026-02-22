# 🎨 GUÍA DE INTERFAZ PROFESIONAL (UI) - MINDHAFEN

Esta guía contiene el código HTML y las imágenes necesarias para que las respuestas del sistema se vean "Premium".

---

## 1. REGISTRO EXITOSO (Landing Page)
Copia este código y reemplaza la sección de `Swal.fire` en tu `script.js` (alrededor de la línea 110).

```javascript
Swal.fire({
    title: '¡Bienvenido a la Revolución Mental!',
    html: `
        <div style="text-align: center;">
            <img src="https://images.unsplash.com/photo-1617791160505-6f00504e3519?q=80&w=500" 
                 alt="Mental Balance" 
                 style="width: 100%; border-radius: 15px; margin-bottom: 20px; box-shadow: 0 4px 15px rgba(0,0,0,0.3);">
            
            <p style="font-size: 1.1rem; color: #f1f5f9;">Tu viaje ha comenzado, <strong>${data.name}</strong>.</p>
            <p style="color: #94a3b8; font-size: 0.9rem;">Hemos enviado tu acceso al mail: ${data.email}</p>
            
            <div style="background: rgba(59, 130, 246, 0.1); padding: 15px; border-radius: 12px; margin: 20px 0; border: 1px solid rgba(59, 130, 246, 0.3);">
                <h4 style="margin-top: 0; color: #3b82f6;">🎁 REGALO INMEDIATO:</h4>
                <div style="display: flex; gap: 10px; justify-content: center;">
                    <a href="downloads/Guia_Descompresion_MindHafen.pdf" download style="text-decoration: none; background: #3b82f6; color: white; padding: 8px 15px; border-radius: 8px; font-size: 0.8rem; font-weight: 600;">
                        <i class="fas fa-file-pdf"></i> PDF
                    </a>
                    <a href="downloads/Audio_Guia_Descompresion.mp3" download style="text-decoration: none; background: #10b981; color: white; padding: 8px 15px; border-radius: 8px; font-size: 0.8rem; font-weight: 600;">
                        <i class="fas fa-microphone"></i> AUDIO
                    </a>
                </div>
            </div>

            <hr style="border: 0; border-top: 1px solid rgba(255,255,255,0.1); margin: 25px 0;">
            
            <h3 style="color: #f59e0b;">✨ ¿Listo para el Plan Premium?</h3>
            <p style="font-size: 0.85rem; color: #94a3b8; margin-bottom: 20px;">Acceso a los 12 módulos avanzados + Mentor IA Personalizado 24/7.</p>
            
            <button id="btnPagar" style="
                background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
                color: white;
                width: 100%;
                padding: 18px;
                border: none;
                border-radius: 12px;
                font-size: 1.1rem;
                font-weight: 700;
                cursor: pointer;
                box-shadow: 0 10px 20px rgba(37, 99, 235, 0.3);
                transition: transform 0.2s;">
                ACTIVAR MI PLAN PREMIUM <i class="fas fa-arrow-right"></i>
            </button>
            <p style="margin-top: 15px; font-size: 0.8rem; color: #64748b; cursor: pointer;" onclick="window.location.href='dashboard.html'">O continuar al panel gratuito...</p>
        </div>
    `,
    background: '#0f172a',
    color: '#f1f5f9',
    showConfirmButton: false,
    width: '500px',
    padding: '2rem'
});
```

---

## 2. RESPUESTA DEL MENTOR IA (Dashboard)
Para que el chat no sea solo texto, configura el nodo de n8n para que devuelva este estilo (usa la imagen del avatar que generamos).

**Estilo sugerido para la burbuja de la IA:**
```html
<div class="ai-response" style="display: flex; gap: 15px; margin-bottom: 20px; animation: fadeIn 0.5s ease;">
    <img src="assets/ai_mentor_avatar.png" style="width: 40px; height: 40px; border-radius: 50%; border: 2px solid #3b82f6;">
    <div style="background: rgba(30, 41, 59, 0.8); padding: 15px; border-radius: 0 15px 15px 15px; border: 1px solid rgba(255,255,255,0.05); max-width: 80%; color: #e2e8f0; line-height: 1.6;">
        <!-- Aquí va el texto de la IA -->
        [RESPUESTA DE GROQ]
    </div>
</div>
```

---

## 3. SEPARACIÓN DE ARCHIVOS ( downloads/ )
Para mantener el orden "2 en 3" (2 gratuitos por cada tema), organiza tu carpeta de descargas así:

| Tipo | Archivo PDF | Archivo de Audio (MP3) |
| :--- | :--- | :--- |
| **TEMA 1 (Estrés)** | `Guia_Descompresion_MindHafen.pdf` | `Audio_Guia_Descompresion.mp3` |
| **TEMA 2 (Sueño)** | `Protocolo_Sueno_MindHafen.pdf` | `Audio_Guia_Sueno.mp3` |
| **TEMA 3 (Ansiedad)** | `Control_Ansiedad_MindHafen.pdf` | `Audio_Guia_Ansiedad.mp3` |
| **PREMIUM** | `Curriculum_Premium_Completo.pdf` | `Modulo_01_Fundamentos.mp3`, etc. |

**Instrucción de Activos:**
- Guarda las imágenes generadas en la carpeta `mindhafen/assets/`.
- Usa nombres claros y descriptivos.

---
*(c) 2026 MindHafen - Estética de Alto Impacto*
