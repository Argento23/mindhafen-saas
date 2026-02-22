# 📧 TEMPLATES DE EMAIL HTML - MINDHAFEN

Estos códigos están listos para ser usados en tu servicio de envío de correos (Brevo/n8n). Están diseñados para verse bien en móviles y ordenadores.

---

## 1. EMAIL DE BIENVENIDA (Registro Gratuito)
**Asunto:** 🧠 ¡Bienvenido a MindHafen! Aquí tienes tu regalo.

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #0f172a; color: #f1f5f9; margin: 0; padding: 0; }
        .container { max-width: 600px; margin: 0 auto; background-color: #1e293b; border-radius: 12px; overflow: hidden; }
        .header { background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%); padding: 40px; text-align: center; }
        .hero-img { width: 100%; display: block; }
        .content { padding: 40px; line-height: 1.6; }
        .button { display: inline-block; background-color: #3b82f6; color: #ffffff !important; text-decoration: none; padding: 15px 25px; border-radius: 8px; font-weight: bold; margin: 20px 0; }
        .footer { padding: 20px; text-align: center; font-size: 0.8rem; color: #94a3b8; background-color: #0f172a; }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1 style="color: white; margin: 0;">MindHafen</h1>
            <p style="color: rgba(255,255,255,0.8);">Tu Refugio Mental ha comenzado.</p>
        </div>
        
        <!-- Reemplazar con la URL de la imagen que subas -->
        <img src="https://images.unsplash.com/photo-1617791160505-6f00504e3519?q=80&w=800" alt="Welcome" class="hero-img">

        <div class="content">
            <h2 style="color: #3b82f6;">¡Hola {{name}}!</h2>
            <p>Gracias por unirte a MindHafen. Estamos comprometidos con tu bienestar y tu reconfiguración neuronal.</p>
            
            <p>Tal como prometimos, aquí tienes tu **Guía de Descompresión Neuronal** lista para descargar. Este es el primer paso para dominar tu sistema nervioso.</p>
            
            <div style="text-align: center;">
                <a href="https://tuweb.com/downloads/Guia_Descompresion_MindHafen.pdf" class="button">DESCARGAR MI GUÍA GRATIS</a>
            </div>

            <p style="font-size: 0.9rem; color: #94a3b8;">También puedes acceder a tu panel de control en cualquier momento para usar el Mentor IA.</p>
            
            <hr style="border: 0; border-top: 1px solid rgba(255,255,255,0.1); margin: 30px 0;">
            
            <h3 style="color: #f59e0b;">✨ ¿Quieres ir más profundo?</h3>
            <p>El plan completo de 12 semanas te espera para transformar tu vida definitivamente.</p>
            <a href="https://tuweb.com/dashboard.html" style="color: #3b82f6; text-decoration: underline;">Mejorar a Plan Premium</a>
        </div>
        
        <div class="footer">
            &copy; 2026 MindHafen - Neurociencia Aplicada.
        </div>
    </div>
</body>
</html>
```

---

## 2. EMAIL DE CONFIRMACIÓN DE COMPRA (Plan Premium)
**Asunto:** ✨ ¡Acceso Premium Activado! Bienvenido al Programa de 12 Semanas.

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <style>
        body { font-family: 'Segoe UI', Arial, sans-serif; background-color: #0f172a; color: #f1f5f9; margin: 0; padding: 0; }
        .container { max-width: 600px; margin: 0 auto; background-color: #1e293b; border-radius: 12px; overflow: hidden; border: 2px solid #f59e0b; }
        .header { background: linear-gradient(135deg, #f59e0b 0%, #d97706 100%); padding: 40px; text-align: center; }
        .content { padding: 40px; line-height: 1.6; }
        .button { display: inline-block; background-color: #f59e0b; color: #000000 !important; text-decoration: none; padding: 15px 25px; border-radius: 8px; font-weight: bold; margin: 20px 0; }
        .feature-box { background: rgba(245, 158, 11, 0.1); border: 1px solid #f59e0b; padding: 20px; border-radius: 12px; margin: 20px 0; }
        .footer { padding: 20px; text-align: center; font-size: 0.8rem; color: #94a3b8; background-color: #0f172a; }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1 style="color: black; margin: 0;">MINDHAFEN PREMIUM</h1>
            <p style="color: rgba(0,0,0,0.7); font-weight: bold;">Felicidades: Has invertido en ti.</p>
        </div>

        <div class="content">
            <h2>¡Bienvenido al Nivel Avanzado, {{name}}!</h2>
            <p>Tu pago ha sido procesado con éxito y tu acceso premium ha sido activado de por vida.</p>
            
            <div class="feature-box">
                <h4 style="margin-top: 0; color: #f59e0b;">LO QUE TIENES AHORA:</h4>
                <ul style="padding-left: 20px;">
                    <li>Acceso al Mentor IA 24/7 (Sin límites).</li>
                    <li>Los 12 Módulos del Currículum Premium.</li>
                    <li>Biblioteca de Audios de Neuro-Dosis Completa.</li>
                </ul>
            </div>

            <p>Tu primer paso es entrar en el Dashboard y saludar a tu Mentor IA. Él te guiará durante estas 12 semanas.</p>
            
            <div style="text-align: center;">
                <a href="https://tuweb.com/dashboard.html" class="button">ENTRAR A MI PANEL PREMIUM</a>
            </div>

            <p style="font-size: 0.9rem; color: #94a3b8;">Si tienes problemas para acceder, responde a este correo y nuestro equipo técnico te ayudará de inmediato.</p>
        </div>
        
        <div class="footer">
            &copy; 2026 MindHafen - Neurociencia Aplicada.
        </div>
    </div>
</body>
</html>
```
