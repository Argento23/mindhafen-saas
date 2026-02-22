# 🧪 GUÍA RÁPIDA: CÓMO COMPLETAR EL PAGO DE PRUEBA

Si recibes el error **"Tu tarjeta rechazó el pago"**, es porque estás usando credenciales de **Producción** con tarjetas de **Prueba**. Para que funcione el test, sigue estos pasos:

### 1. Obtén tu Token de Prueba (2 min)
1. Ve al [Panel de Desarrolladores de MercadoPago](https://www.mercadopago.com.ar/developers/panel).
2. Haz clic en tu aplicación (**GenerArise** o **MindHafen**).
3. En el menú izquierdo, ve a **Credenciales de prueba**.
4. Copia el **Access Token** (empieza con `TEST-...`).

### 2. Actualiza n8n
1. Abre tu workflow `mindhafen-checkout`.
2. Haz clic en el nodo **MercadoPago API**.
3. En la sección de **Headers**, busca el que dice `Authorization`.
4. Borra el valor anterior y pega: `Bearer TU_TOKEN_TEST_COPIADO`
5. Dale a **Save** y asegúrate de que el workflow esté **Active**.

### 3. Realiza el Test
1. Ve a tu web y haz clic en comprar.
2. **IMPORTANTE:** Usa un email de comprador **ficticio** (ej: `comprador@test.com`).
3. Usa estos datos de tarjeta:
   - **Número:** `5031 7557 3453 0604`
   - **Nombre:** `APRO`
   - **Vencimiento:** `12/28`
   - **CVV:** `123`
   - **DNI:** `12345678`

### 4. ¿Cómo volver a la vida real?
Cuando ya hayas comprobado que todo funciona y quieras cobrar dinero real:
1. Vuelve a n8n.
2. Cambia el token de nuevo por el que empieza con `APP_USR`.
3. ¡Listo para vender!
