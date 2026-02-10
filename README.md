<div align="center">

# 🚀 API Sistema de Ventas

### Sistema completo de ventas con facturación electrónica

[![Laravel](https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)](https://laravel.com)
[![PHP](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white)](https://php.net)
[![License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)](LICENSE)

[Características](#características) • [Instalación](#instalación) • [Demo en Vivo](#demo-en-vivo) • [Capturas](#capturas-de-pantalla)

</div>

---

## ✨ Características

- 📊 Dashboard completo con métricas en tiempo real
- 🛍️ Gestión integral de productos e inventario
- 💰 Sistema de ventas y facturación electrónica
- 👥 Control de usuarios y permisos (RBAC)
- 📈 Reportes y estadísticas detalladas
- 🔐 Autenticación segura con Laravel Sanctum
- 📱 API RESTful documentada

---

## 🚀 Inicio Rápido

### Requisitos Previos

- PHP >= 8.1
- Composer
- MySQL/PostgreSQL
- Node.js y NPM

### Instalación

Sigue estos pasos para configurar el proyecto en tu entorno local:

#### 1️⃣ Instalar dependencias
```bash
composer install
```

#### 2️⃣ Configurar variables de entorno
```bash
cp .env.example .env
```

Edita el archivo `.env` con tus credenciales de base de datos.

#### 3️⃣ Generar clave de aplicación
```bash
php artisan key:generate
php artisan storage:link
```

#### 4️⃣ Ejecutar migraciones y seeders
```bash
# Desarrollo (con datos de prueba)
php artisan migrate --seed

# Solo el seeder de permisos
php artisan db:seed --class=PermissionsDemoSeeder
```

#### 5️⃣ Iniciar servidor de desarrollo
```bash
php artisan serve
```

La API estará disponible en `http://localhost:8000`

---

## 🌐 Demo en Vivo

Prueba el sistema completo en nuestros servidores de demostración:

<div align="center">

| Servicio | URL |
|----------|-----|
| 🔗 **Backend API** | [api-fe.avisonline.store](https://api-fe.avisonline.store/) |
| 💻 **Frontend Admin** | [admin-fe.avisonline.store](https://admin-fe.avisonline.store/) |

### 🔑 Credenciales de Acceso
```
Email: demo.sum@gmail.com
Contraseña: 12345678
```

</div>

---

## 📸 Pruebas front-vue

### Panel de Control

<p align="center">
  <img src="docs/screenshots/dashboard.png" alt="Dashboard del Sistema" style="max-width:100%;width:900px;border-radius:12px;box-shadow:0 10px 30px rgba(0,0,0,0.3);">
  <br/>
  <em>📊 Dashboard - Vista general del sistema con métricas en tiempo real</em>
</p>

<br/>

### Gestión de Productos

<p align="center">
  <img src="docs/screenshots/product-list.png" alt="Listado de Productos" style="max-width:100%;width:900px;border-radius:12px;box-shadow:0 10px 30px rgba(0,0,0,0.3);">
  <br/>
  <em>📦 Gestión de Productos - Control completo del inventario</em>
</p>

<br/>

### Registro de Ventas

<p align="center">
  <img src="docs/screenshots/sale-list.png" alt="Listado de Ventas" style="max-width:100%;width:900px;border-radius:12px;box-shadow:0 10px 30px rgba(0,0,0,0.3);">
  <br/>
  <em>💳 Módulo de Ventas - Historial y facturación electrónica</em>
</p>

---
## 📸 Pruebas Api 

### Panel de Control

<p align="center">
  <img src="docs/screenshots/login-apiapi-postman.png" alt="Dashboard del Sistema" style="max-width:100%;width:900px;border-radius:12px;box-shadow:0 10px 30px rgba(0,0,0,0.3);">
  <br/>
  <em>📊 Login- Mediante la API</em>
</p>

<br/>


---




## 📚 Documentación

Para más información sobre cómo usar y extender este sistema, consulta:

- [Documentación de la API](docs/API.md)
- [Guía de Contribución](CONTRIBUTING.md)
- [Changelog](CHANGELOG.md)

---

## 🤝 Contribuir

Las contribuciones son bienvenidas. Por favor, lee las [guías de contribución](CONTRIBUTING.md) antes de enviar un Pull Request.

---

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo [LICENSE](LICENSE) para más detalles.

---

<div align="center">

**Desarrollado con ❤️ usando Laravel**

[⬆ Volver arriba](#-api-sistema-de-ventas)

</div>