# 📚 Casos de Uso - Barber Backend

---

## 📅 Gestión de Citas

### 🎯 Caso de Uso: Crear Cita

- **ID:** UC-001  
- **Actor Principal:** Cliente  
- **Descripción:** El cliente agenda una cita con un barbero en una fecha y hora disponible.  
- **Precondiciones:**
  - Cliente autenticado.
  - Barbero disponible en la fecha/hora seleccionada.
- **Flujo Principal:**
  1. Cliente solicita agenda de barberos.
  2. Selecciona servicio, barbero, fecha y hora.
  3. Sistema valida disponibilidad.
  4. Cita queda registrada y se envía confirmación.
- **Excepciones:**
  - Horario no disponible → Error de conflicto.
  - Cliente con cita pendiente en la misma franja → Error de doble reserva.
- **Postcondiciones:**  
  - Cita registrada en estado **Confirmada**.

---

### 🎯 Caso de Uso: Consultar Citas

- **ID:** UC-002  
- **Actor Principal:** Cliente, Barbero  
- **Descripción:** Consultar citas futuras y pasadas.  
- **Precondiciones:** Usuario autenticado.  
- **Flujo Principal:**
  1. Usuario solicita listado de citas.
  2. Sistema filtra según rol (Cliente ve sus citas; Barbero, las asignadas).
- **Postcondiciones:**  
  - Se retorna lista paginada de citas.

---

### 🎯 Caso de Uso: Modificar Cita

- **ID:** UC-003  
- **Actor Principal:** Cliente  
- **Descripción:** Permite reprogramar una cita.  
- **Precondiciones:**
  - Cita existente.
  - Modificación dentro del plazo permitido.
- **Flujo Principal:**
  1. Cliente solicita reprogramación.
  2. Sistema valida nueva disponibilidad.
  3. Se actualiza la cita.
- **Excepciones:**  
  - No disponibilidad en nueva fecha → Error.

---

### 🎯 Caso de Uso: Cancelar Cita

- **ID:** UC-004  
- **Actor Principal:** Cliente  
- **Descripción:** Cancelar una cita antes de su inicio.  
- **Precondiciones:**  
  - Cita en estado **Confirmada**.
- **Flujo Principal:**
  1. Cliente solicita cancelación.
  2. Sistema marca la cita como **Cancelada**.
- **Postcondiciones:**  
  - Cita en estado **Cancelada**.

---

## 👤 Gestión de Usuarios

### 🎯 Caso de Uso: Registrar Cliente

- **ID:** UC-005  
- **Actor Principal:** Cliente  
- **Descripción:** Registro de nuevo cliente.  
- **Flujo Principal:**
  1. Usuario ingresa datos personales.
  2. Se crea la cuenta y se envía correo de confirmación (opcional).

---

### 🎯 Caso de Uso: Autenticación (Login/Logout)

- **ID:** UC-006  
- **Actor Principal:** Cliente, Barbero, Admin  
- **Descripción:** Inicio y cierre de sesión con JWT.  
- **Precondiciones:**  
  - Usuario registrado.
- **Flujo Principal:**
  1. Usuario envía credenciales.
  2. Sistema valida y entrega JWT.

---

## ✂️ Gestión de Barberos

### 🎯 Caso de Uso: Registrar Barbero

- **ID:** UC-007  
- **Actor Principal:** Admin  
- **Descripción:** Registro de barberos en el sistema.  

---

### 🎯 Caso de Uso: Asignar Horarios de Trabajo

- **ID:** UC-008  
- **Actor Principal:** Admin, Barbero  
- **Descripción:** Definir bloques de disponibilidad.  

---

### 🎯 Caso de Uso: Consultar Agenda

- **ID:** UC-009  
- **Actor Principal:** Barbero  
- **Descripción:** Ver agenda de citas asignadas.  

---

## 💇 Gestión de Servicios

### 🎯 Caso de Uso: Crear Servicio

- **ID:** UC-010  
- **Actor Principal:** Admin  
- **Descripción:** Definir nuevos tipos de servicios.  

---

### 🎯 Caso de Uso: Consultar Lista de Servicios

- **ID:** UC-011  
- **Actor Principal:** Cliente  
- **Descripción:** Consultar catálogo de servicios.  

---

## 💰 Gestión de Pagos (Opcional)

### 🎯 Caso de Uso: Registrar Pago

- **ID:** UC-012  
- **Actor Principal:** Admin  
- **Descripción:** Registrar pagos de clientes en caja.  

---

### 🎯 Caso de Uso: Consultar Historial de Pagos
- **ID:** UC-013  
- **Actor Principal:** Admin  
- **Descripción:** Visualizar pagos históricos de clientes.  

---
