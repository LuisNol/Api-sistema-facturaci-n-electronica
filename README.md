<div align="center">

# 🚀 API Sistema de Ventas

### Sistema completo de ventas con facturación electrónica

[![Laravel](https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)](https://laravel.com)
[![PHP](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white)](https://php.net)
[![License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)](LICENSE)

[Características](#-características) • [Instalación](#-inicio-rápido) • [Demo en Vivo](#-demo-en-vivo) • [Capturas](#-capturas-de-pantalla)

</div>

---

## ✨ Características

<table>
<tr>
<td width="50%">

### 📊 Dashboard & Reportes
- Métricas en tiempo real
- Estadísticas detalladas
- Gráficos interactivos

### 🛍️ Gestión Comercial
- Control integral de productos
- Administración de inventario
- Sistema de categorías

</td>
<td width="50%">

### 💰 Ventas & Facturación
- Facturación electrónica
- Múltiples métodos de pago
- Historial de transacciones

### 🔐 Seguridad
- Autenticación Laravel Sanctum
- Control de usuarios (RBAC)
- API RESTful documentada

</td>
</tr>
</table>

---

## 🚀 Inicio Rápido

### 📋 Requisitos Previos
```bash
PHP >= 8.1
Composer
MySQL/PostgreSQL
Node.js y NPM
```

### ⚙️ Instalación

<details>
<summary><b>📦 1. Instalar dependencias</b></summary>
```bash
composer install
```
</details>

<details>
<summary><b>🔧 2. Configurar variables de entorno</b></summary>
```bash
cp .env.example .env
```
> Edita el archivo `.env` con tus credenciales de base de datos

</details>

<details>
<summary><b>🔑 3. Generar clave de aplicación</b></summary>
```bash
php artisan key:generate
php artisan storage:link
```
</details>

<details>
<summary><b>🗄️ 4. Ejecutar migraciones y seeders</b></summary>
```bash
# Desarrollo (con datos de prueba)
php artisan migrate --seed

# Solo el seeder de permisos
php artisan db:seed --class=PermissionsDemoSeeder
```
</details>

<details>
<summary><b>🚀 5. Iniciar servidor de desarrollo</b></summary>
```bash
php artisan serve
```
> La API estará disponible en `http://localhost:8000`

</details>

---

## 🌐 Demo en Vivo

<div align="center">

### Prueba el sistema completo en nuestros servidores

<table>
<tr>
<th>🔗 Backend API</th>
<th>💻 Frontend Admin</th>
</tr>
<tr>
<td><a href="https://api-fe.avisonline.store/">api-fe.avisonline.store</a></td>
<td><a href="https://admin-fe.avisonline.store/">admin-fe.avisonline.store</a></td>
</tr>
</table>

### 🔑 Credenciales de Acceso
```yaml
Email: demo.sum@gmail.com
Contraseña: 12345678
```

</div>

---

## 📸 Capturas de Pantalla

### 📊 Panel de Control

<div align="center">
  <img src="docs/screenshots/dashboard.png" alt="Dashboard del Sistema" width="100%" style="border-radius:12px;box-shadow:0 10px 30px rgba(0,0,0,0.3);margin:20px 0;">
  
  **Dashboard - Vista general del sistema con métricas en tiempo real**
</div>

---

### 📦 Gestión de Productos

<div align="center">
  <img src="docs/screenshots/product-list.png" alt="Listado de Productos" width="100%" style="border-radius:12px;box-shadow:0 10px 30px rgba(0,0,0,0.3);margin:20px 0;">
  
  **Gestión de Productos - Control completo del inventario**
</div>

---

### 💳 Registro de Ventas

<div align="center">
  <img src="docs/screenshots/sale-list.png" alt="Listado de Ventas" width="100%" style="border-radius:12px;box-shadow:0 10px 30px rgba(0,0,0,0.3);margin:20px 0;">
  
  **Módulo de Ventas - Historial y facturación electrónica**
</div>

---

## 🔌 Pruebas de API

### 🔐 Login

<div align="center">

**Endpoint:** `https://api-fe.avisonline.store/api/auth/login`

<img src="docs/screenshots/login-apiapi-postman.png" alt="Login API" width="100%" style="border-radius:12px;box-shadow:0 10px 30px rgba(0,0,0,0.3);margin:20px 0;">

**Autenticación mediante API - Postman**

</div>

---

### 🎫 Token de Autorización

<div align="center">
  <img src="docs/screenshots/token_autoapi-postman.png" alt="Token de Autorización" width="100%" style="border-radius:12px;box-shadow:0 10px 30px rgba(0,0,0,0.3);margin:20px 0;">
  
  **Token de autorización - Bearer Token**
</div>

---

### 📋 Listado de Productos

<div align="center">

**Endpoint:** `https://api-fe.avisonline.store/api/products`

<img src="docs/screenshots/list-product-api-postman.png" alt="Listado de Productos API" width="100%" style="border-radius:12px;box-shadow:0 10px 30px rgba(0,0,0,0.3);margin:20px 0;">

**Gestión de Productos - Control completo del inventario vía API**

</div>

---

## 📚 Documentación

<div align="center">

| Recurso | Descripción |
|---------|-------------|
| 📖 [Documentación de la API](docs/API.md) | Endpoints y ejemplos de uso |
| 🤝 [Guía de Contribución](CONTRIBUTING.md) | Cómo contribuir al proyecto |
| 📝 [Changelog](CHANGELOG.md) | Historial de versiones |

</div>

---

## 🤝 Contribuir

Las contribuciones son siempre bienvenidas. Por favor:

1. 🍴 Fork el proyecto
2. 🔨 Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. 💾 Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. 📤 Push a la rama (`git push origin feature/AmazingFeature`)
5. 🔃 Abre un Pull Request

> Lee las [guías de contribución](CONTRIBUTING.md) para más detalles

---

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo [LICENSE](LICENSE) para más detalles.

---

<div align="center">

### Desarrollado con ❤️ usando Laravel

[![Made with Laravel](https://img.shields.io/badge/Made%20with-Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)](https://laravel.com)

[⬆ Volver arriba](#-api-sistema-de-ventas)

</div>