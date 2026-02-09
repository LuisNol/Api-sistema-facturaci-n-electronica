## Inicio rápido (comandos Laravel)

Sigue estos pasos para poner en marcha la API en un entorno de desarrollo:

1. Instalar dependencias:

```bash
## Inicio rápido (comandos Laravel)
```

2. Copiar y configurar variables de entorno:

```bash
cp .env.example .env
# Edita .env: ajustar DB_*, MAIL_*, JWT_*, y otros valores necesarios
```

3. Generar clave de aplicación y enlazar almacenamiento:

```bash
php artisan key:generate
php artisan storage:link
```

4. Ejecutar migraciones y seeders (desarrollo):

```bash
php artisan migrate --seed
```

5. Crear un usuario de prueba (opción A: desde Tinker):

```bash
php artisan tinker
>>> use App\\Models\\User;
>>> User::create(['name' => 'Demo User', 'email' => 'demo.sum@gmail.com', 'password' => bcrypt('12345678')]);
```

Nota: la cuenta de prueba (usar solo en desarrollo):

- Usuario: `demo.sum@gmail.com`
- Contraseña: `12345678`

```bash
php artisan serve --host=127.0.0.1 --port=8000
```

Comandos útiles adicionales:

```bash
php artisan migrate:refresh --seed   # reinicia BD y vuelve a sembrar
php artisan queue:work               # procesa colas
./vendor/bin/phpunit                # ejecutar pruebas
```

## Capturas / Imágenes

He incluido referencias a las capturas en el README como placeholders. Para mostrarlas en el README coloca las imágenes en `docs/screenshots/` con estos nombres:

- `docs/screenshots/dashboard.svg`
- `docs/screenshots/product-list.svg`

```markdown
<p align="center">
	<img src="docs/screenshots/dashboard.png" alt="Dashboard" style="max-width:100%;width:900px;border-radius:8px;box-shadow:0 8px 24px rgba(0,0,0,0.6);">
	<br/>
	<em>Dashboard — Vista general del sistema</em>
</p>

<p align="center">
	<img src="docs/screenshots/product-list.png" alt="Listado de Productos" style="max-width:100%;width:900px;border-radius:8px;box-shadow:0 8px 24px rgba(0,0,0,0.6);">
	<br/>
	<em>Listado de productos</em>
</p>

<p align="center">
	<img src="docs/screenshots/sale-list.png" alt="Listado de Ventas" style="max-width:100%;width:900px;border-radius:8px;box-shadow:0 8px 24px rgba(0,0,0,0.6);">
	<br/>
	<em>Listado de ventas</em>
</p>
```

Si quieres, puedo añadir las imágenes al repositorio por ti: súbelas al chat o indícame la ruta donde están, y las añadiré automáticamente.

---


Descripción breve
- Proyecto: API REST para el sistema de facturación y ventas.
- Tecnología: Laravel (PHP) — backend para manejar clientes, productos, ventas, guías y notas electrónicas.
- PHP 8.1+ (o versión compatible)
- Composer
