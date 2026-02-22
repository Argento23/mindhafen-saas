# 🤖 HTML DINÁMICO PARA AI SALES - GENERARISE

Este HTML está diseñado para ser la **salida del nodo de IA** en n8n. Utiliza las variables que has definido y mantiene la estética del "Senior Sales AI".

---

## ESTRUCTURA DEL PROMPT PARA EL NODO DE IA
Copia esto y agrégalo al final de tus instrucciones para que la IA sepa qué formato devolver:

**"Devuelve tu respuesta encapsulada exactamente en esta estructura HTML:"**

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <style>
        body { font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; background-color: #f7f7f7; color: #333333; margin: 0; padding: 0; }
        .wrapper { background-color: #f7f7f7; padding: 30px 0; }
        .container { max-width: 600px; margin: 0 auto; background-color: #ffffff; border-radius: 4px; overflow: hidden; box-shadow: 0 10px 30px rgba(0,0,0,0.05); }
        .header { background-color: #1a1a1a; padding: 25px; text-align: center; }
        .hero-img { width: 100%; display: block; }
        .content { padding: 40px; line-height: 1.7; }
        .agency-name { color: #ffffff; font-size: 20px; font-weight: bold; letter-spacing: 2px; text-transform: uppercase; margin: 0; }
        .accent-bar { width: 40px; height: 3px; background-color: #c5a059; margin: 20px 0; }
        .button { display: inline-block; background-color: #1a1a1a; color: #ffffff !important; text-decoration: none; padding: 16px 32px; border-radius: 2px; font-weight: bold; font-size: 14px; text-transform: uppercase; letter-spacing: 1px; margin: 25px 0; }
        .footer { padding: 30px; text-align: center; font-size: 12px; color: #999999; border-top: 1px solid #eeeeee; }
        .highlight { color: #c5a059; font-weight: bold; }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="container">
            <div class="header">
                <p class="agency-name">GENERARISE AGENCY</p>
            </div>
            
            <img src="https://images.unsplash.com/photo-1497366216548-37526070297c?q=80&w=800" alt="GenerArise AI" class="hero-img">

            <div class="content">
                <!-- EL TEXTO GENERADO POR LA IA DEBE REEMPLAZAR ESTA PARTE -->
                <h2 style="margin-top: 0; font-weight: 300; font-size: 22px;">Optimización IA para <span class="highlight">{{ $node["Webhook Lead Form"].json["body"]["company"] || "tu empresa" }}</span></h2>
                <div class="accent-bar"></div>
                
                <p>Hola <strong>{{ $node["Webhook Lead Form"].json["body"]["name"] }}</strong>,</p>

                <p>[REDACTADO POR IA: Agradecimiento + Entendimiento del desafío: {{ $node["Webhook Lead Form"].json["body"]["message"] }}]</p>
                
                <p>[REDACTADO POR IA: Solución de Agentes de IA en 2 líneas]</p>
                
                <p>[REDACTADO POR IA: Petición de 2 horarios para auditoría]</p>

                <div style="text-align: center;">
                    <a href="https://cal.com/gustavo-a.-dornhofer-nqjqos/auditoria-estrategica-ia" class="button">Agendar Auditoría de 15 min</a>
                </div>

                <p style="font-weight: bold; margin-bottom: 0;">Gustavo Dornhofer</p>
                <p style="margin-top: 0; color: #777777;">Director Comercial @ GenerArise AI</p>
            </div>
            
            <div class="footer">
                &copy; 2026 Generarise Agency | Estrategia & Innovación Digital.
            </div>
        </div>
    </div>
</body>
</html>
```

---

### 📋 NOTA PARA EL WORKFLOW DE n8n:

1.  **En el nodo de IA**: Debes pasarle tus instrucciones de idioma (ES/EN) y los datos del Lead.
2.  **Prompt Maestro**: Pídele a la IA que devuelva el contenido de los párrafos pero respetando las etiquetas `<p>` y los contenedores `div` que le diste arriba.
3.  **Resultado**: n8n recibirá el HTML completo y solo tendrás que mapear el campo `output` de la IA al campo **HTML Body** del nodo de Brevo.
