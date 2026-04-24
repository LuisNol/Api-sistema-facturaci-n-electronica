<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Imprimir Comprobante</title>
    <style>
        body {
            margin: 0;
            background: #fff;
        }

        iframe {
            position: absolute;
            width: 0;
            height: 0;
            border: 0;
            left: -9999px;
            top: -9999px;
        }
    </style>
</head>
<body>
    <iframe
        id="printFrame"
        src="{{ $pdfUrl }}"
        onload="setTimeout(function(){ try { this.contentWindow.focus(); this.contentWindow.print(); } catch (e) {} }.bind(this), 800);"
    ></iframe>

    <script>
        window.addEventListener('afterprint', function () {
            window.close();
        });

        window.addEventListener('load', function () {
            setTimeout(function () {
                try {
                    const frame = document.getElementById('printFrame');
                    if (frame && frame.contentWindow) {
                        frame.contentWindow.focus();
                    }
                } catch (e) {}
            }, 500);
        });
    </script>
</body>
</html>
