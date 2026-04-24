<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Comprobante</title>
    <style>
        *,
        *::before,
        *::after {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: DejaVu Sans, Arial, sans-serif;
            font-size: 10.5px;
            color: #101010;
            background: #fff;
        }

        .sheet {
            margin: 10px;
            border: none;
            padding: 10px 12px;
        }

        .header {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            margin-bottom: 10px;
        }

        .header td {
            vertical-align: middle;
        }

        .logo-cell {
            width: 14%;
            text-align: left;
        }

        .logo {
            width: 112px;
            max-height: 82px;
            object-fit: contain;
        }

        .company-cell {
            width: 50%;
            text-align: center;
            padding: 0 10px;
        }

        .company-name {
            font-size: 16px;
            margin: 0;
            line-height: 1.15;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.3px;
        }

        .company-trade {
            font-size: 13px;
            margin: 2px 0 6px;
            line-height: 1.2;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.3px;
        }

        .company-line {
            margin: 0 0 2px;
            font-size: 10.5px;
            line-height: 1.35;
        }

        .doc-cell {
            width: 36%;
        }

        .doc-box {
            border: 2px solid #1a1a1a;
            border-radius: 22px;
            text-align: center;
            padding: 14px 10px;
        }

        .doc-ruc {
            font-size: 16px;
            font-weight: 700;
            margin: 0 0 5px;
            line-height: 1;
            letter-spacing: 0.2px;
        }

        .doc-type {
            font-size: 11px;
            margin: 0 0 6px;
            line-height: 1.2;
            text-transform: uppercase;
        }

        .doc-number {
            font-size: 14px;
            font-weight: 700;
            margin: 0;
            line-height: 1;
            letter-spacing: 0.4px;
        }

        .info-box {
            border: 2px solid #1a1a1a;
            border-radius: 20px;
            padding: 10px 12px;
            margin-bottom: 8px;
        }

        .info-table {
            width: 100%;
            border-collapse: collapse;
        }

        .info-table td {
            width: 50%;
            vertical-align: top;
            padding: 1px 8px;
        }

        .field {
            margin: 0 0 5px;
            line-height: 1.35;
        }

        .label {
            display: inline-block;
            min-width: 112px;
            color: #0b6f18;
            font-weight: 700;
        }

        .right .label {
            min-width: 145px;
        }

        .detail-table {
            width: 100%;
            border-collapse: collapse;
            margin: 6px 0;
        }

        .detail-table th,
        .detail-table td {
            border: 1px solid #4a4a4a;
            padding: 4px 5px;
            font-size: 10.5px;
        }

        .detail-table th {
            text-align: center;
            font-weight: 700;
            background: #e9e9e9;
        }

        .text-center {
            text-align: center;
        }

        .text-right {
            text-align: right;
        }

        .bottom {
            width: 100%;
            border-collapse: collapse;
            margin-top: 6px;
        }

        .bottom td {
            vertical-align: top;
        }

        .left-notes {
            width: 61%;
            padding-right: 12px;
        }

        .note {
            margin: 0 0 5px;
            font-size: 10.5px;
        }

        .qr-wrap {
            margin-top: 8px;
        }

        .qr-table {
            border-collapse: collapse;
        }

        .qr-table td {
            vertical-align: top;
        }

        .qr-img {
            width: 96px;
            height: 96px;
            border: 1px solid #444;
        }

        .qr-fallback {
            width: 96px;
            height: 96px;
            border: 1px solid #444;
            font-size: 9px;
            text-align: center;
            padding-top: 40px;
            color: #555;
        }

        .qr-code-text {
            margin-left: 10px;
            font-size: 10px;
            color: #333;
            max-width: 250px;
            word-break: break-all;
            line-height: 1.25;
        }

        .note-link {
            color: #0c5ed8;
            font-weight: 700;
        }

        .right-totals {
            width: 39%;
        }

        .totals {
            width: 100%;
            border-collapse: collapse;
        }

        .totals td {
            padding: 2px 0;
            font-size: 14px;
            line-height: 1.2;
        }

        .totals .label {
            min-width: auto;
            color: #0b6f18;
            font-size: 12px;
            font-weight: 700;
            text-align: right;
            display: block;
        }

        .totals .value {
            width: 34%;
            text-align: right;
            font-size: 12px;
            font-weight: 400;
            padding-left: 8px;
            white-space: nowrap;
        }

        .discount {
            color: #ef4444;
        }

        .total-line .label,
        .total-line .value {
            font-weight: 700;
        }

        .footer {
            border: 1px solid #4a4a4a;
            padding: 5px 8px;
            margin-top: 8px;
            font-size: 11px;
        }

        .muted {
            color: #4b5563;
        }
    </style>
</head>
<body>
@php
    $company = $company ?? null;
    $currency = $sale->currency ?: 'S/';

    $defaultCompanyName = 'LARAVEST';
    $defaultCompanyTrade = 'SAC. TEC. LARAVEST';
    $defaultCompanyAddress = 'Av. Primavera 2711, Santiago de Surco';
    $defaultCompanyLocation = '25884 - Lima - Lima';
    $defaultCompanyRuc = '20161515648';
    $defaultCompanyPhone = '958962565';
    $defaultCompanyEmail = 'echodeveloper960@gmail.com';

    $documentType = 'COMPROBANTE ELECTRONICO';
    if (str_starts_with((string) $sale->serie, 'F')) {
        $documentType = 'FACTURA DE VENTA ELECTRONICA';
    } elseif (str_starts_with((string) $sale->serie, 'B')) {
        $documentType = 'BOLETA DE VENTA ELECTRONICA';
    }

    $documentNumber = $sale->n_operacion ?: ($sale->serie ? $sale->serie . '-' . str_pad((string) $sale->id, 8, '0', STR_PAD_LEFT) : (string) $sale->id);
    $companyName = trim((string) data_get($company, 'razon_social', '')) ?: $defaultCompanyName;
    $companyTradeName = trim((string) data_get($company, 'razon_social_comercial', '')) ?: $defaultCompanyTrade;
    $companyRuc = data_get($company, 'n_document', $defaultCompanyRuc);
    $companyPhone = data_get($company, 'phone', $defaultCompanyPhone);
    $companyEmail = data_get($company, 'email', $defaultCompanyEmail);

    $companyAddressParts = array_filter([
        data_get($company, 'district'),
        data_get($company, 'provincia'),
        data_get($company, 'region'),
    ]);
    $companyAddress = data_get($company, 'address') ?: $defaultCompanyAddress;
    $companyLocation = $companyAddressParts ? implode(' - ', $companyAddressParts) : $defaultCompanyLocation;

    $client = $sale->client;
    $clientName = data_get($client, 'full_name', 'N/D');
    $clientNumber = data_get($client, 'n_document', 'N/D');
    $clientPhone = data_get($client, 'phone', 'N/D');

    $clientAddressParts = array_filter([
        data_get($client, 'region'),
        data_get($client, 'provincia'),
        data_get($client, 'distrito'),
    ]);
    $clientAddress = $clientAddressParts ? implode('/', $clientAddressParts) : 'N/D';

    $userName = trim(data_get($sale, 'user.name', '') . ' ' . data_get($sale, 'user.surname', ''));
    $userName = $userName ?: 'Administrador';

    $paymentCondition = (int) $sale->state_payment === 3 ? 'Contado' : 'Crédito';
    $paymentMethod = data_get($sale, 'first_payment.method_payment', 'N/D');
    $paymentAmount = data_get($sale, 'first_payment.amount');
    $issueDate = $sale->created_at ? $sale->created_at->format('d/m/Y H:i:s') : 'N/D';
    $dueDate = $sale->date_validation ? \Carbon\Carbon::parse($sale->date_validation)->format('d/m/Y') : ($sale->created_at ? $sale->created_at->format('d/m/Y') : 'N/D');

    $discountGlobalGeneral = (float) ($sale->discount_global ?? 0);
    if ($sale->amount_anticipo) {
        $discountGlobalGeneral += (float) $sale->amount_anticipo;
    }

    $retencionTotal = 0;
    $percepcionTotal = 0;
    if ((int) $sale->retencion_igv === 3) {
        $percepcionTotal = round(((float) $sale->total * 0.04), 2);
    }
    if ((int) $sale->retencion_igv === 1) {
        $retencionTotal = round(((float) $sale->total * 0.03), 2);
    }
    if ((int) $sale->retencion_igv === 2) {
        $retencionTotal = round(((float) $sale->total * 0.04), 2);
    }

    $saleDetails = $sale->sale_details ?? collect();
    $icbperTotal = round((float) $saleDetails->sum('icbper'), 2);
    $iscTotal = round((float) $saleDetails->sum('isc'), 2);

    $totalSales = round(((float) $sale->total + $icbperTotal + $iscTotal + $percepcionTotal) - ($discountGlobalGeneral + (float) $sale->igv_discount_general + $retencionTotal), 2);
    $subTotalSale = round(((float) $sale->subtotal - $discountGlobalGeneral), 2);
    $igvTotal = round(((float) $sale->igv - (float) $sale->igv_discount_general), 2);

    try {
        $converter = new \Luecano\NumeroALetras\NumeroALetras();
        $whole = (int) floor($totalSales);
        $decimals = str_pad((string) round(($totalSales - $whole) * 100), 2, '0', STR_PAD_LEFT);
        $totalInLetters = strtoupper($converter->toWords($whole)) . ' (' . $decimals . '/100) SOLES';
    } catch (\Throwable $th) {
        $whole = (int) floor($totalSales);
        $decimals = str_pad((string) round(($totalSales - $whole) * 100), 2, '0', STR_PAD_LEFT);
        $totalInLetters = number_format($whole, 0) . ' (' . $decimals . '/100) SOLES';
    }

    $salesAnticipos = $sale->sales_anticipos ? json_decode($sale->sales_anticipos, true) : [];
    $logoPath = public_path('laravest.png');

    $qrPayload = implode('|', [
        $companyRuc,
        str_starts_with((string) $sale->serie, 'F') ? '01' : '03',
        (string) ($sale->serie ?? ''),
        (string) ($sale->correlativo ?? $sale->id),
        number_format($igvTotal, 2, '.', ''),
        number_format($totalSales, 2, '.', ''),
        $sale->created_at ? $sale->created_at->format('Y-m-d') : date('Y-m-d'),
        data_get($sale, 'client.type_document', '0'),
        $clientNumber,
    ]);

    $qrImageBase64 = null;
    $qrPreviewText = substr(str_replace('|', '', $qrPayload), 0, 36) . '=';
    try {
        $qrUrl = 'https://api.qrserver.com/v1/create-qr-code/?size=220x220&data=' . rawurlencode($qrPayload);
        $qrContent = @file_get_contents($qrUrl);
        if ($qrContent !== false) {
            $qrImageBase64 = 'data:image/png;base64,' . base64_encode($qrContent);
        }
    } catch (\Throwable $th) {
        $qrImageBase64 = null;
    }
@endphp

<div class="sheet">
    <table class="header">
        <tr>
            <td class="logo-cell">
                @if (file_exists($logoPath))
                    <img class="logo" src="{{ $logoPath }}" alt="Logo">
                @endif
            </td>
            <td class="company-cell">
                <p class="company-name">{{ $companyName }}</p>
                <p class="company-trade">{{ $companyTradeName }}</p>
                <p class="company-line">{{ $companyAddress }}</p>
                <p class="company-line">{{ $companyLocation }}</p>
                <p class="company-line">RUC: {{ $companyRuc }}</p>
                <p class="company-line">Contactos al: {{ $companyPhone }} / {{ $companyEmail }}</p>
            </td>
            <td class="doc-cell">
                <div class="doc-box">
                    <p class="doc-ruc">{{ $companyRuc }}</p>
                    <p class="doc-type">{{ $documentType }}</p>
                    <p class="doc-number">N° {{ $documentNumber }}</p>
                </div>
            </td>
        </tr>
    </table>

    <div class="info-box">
        <table class="info-table">
            <tr>
                <td>
                    <p class="field"><span class="label">Cliente</span>: {{ $clientName }}</p>
                    <p class="field"><span class="label">RUC / DNI</span>: {{ $clientNumber }}</p>
                    <p class="field"><span class="label">Telefono</span>: {{ $clientPhone }}</p>
                    <p class="field"><span class="label">Direccion</span>: {{ $clientAddress }}</p>
                    <p class="field"><span class="label">Usuario</span>: {{ $userName }}</p>
                    <p class="field"><span class="label">Observacion</span>: {{ $sale->description ?: 'N/D' }}</p>
                </td>
                <td class="right">
                    <p class="field"><span class="label">Fecha de Emision</span>: {{ $issueDate }}</p>
                    <p class="field"><span class="label">Fecha de Vencimiento</span>: {{ $dueDate }}</p>
                    <p class="field"><span class="label">Guia Remision Rem.</span>: N/D</p>
                    <p class="field"><span class="label">Guia Remision Trans.</span>: N/D</p>
                    <p class="field"><span class="label">Condicion de Pago</span>: {{ $paymentCondition }}</p>
                    <p class="field"><span class="label">Medio de Pago</span>: {{ $paymentMethod }}{{ $paymentAmount ? ' ' . $currency . ': ' . number_format((float) $paymentAmount, 2) : '' }}</p>
                </td>
            </tr>
        </table>
    </div>

    <table class="detail-table">
        <thead>
            <tr>
                <th style="width: 12%;">Codigo</th>
                <th style="width: 7%;">Cant</th>
                <th style="width: 9%;">Unidad</th>
                <th>Descripcion</th>
                <th style="width: 9%;">Valor U.</th>
                <th style="width: 9%;">Precio U.</th>
                <th style="width: 7%;">IGV</th>
                <th style="width: 8%;">Descuento</th>
                <th style="width: 10%;">SubTotal</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($saleDetails as $saleDetail)
                <tr>
                    <td class="text-center">{{ data_get($saleDetail, 'product.sku', str_pad((string) $saleDetail->product_id, 8, '0', STR_PAD_LEFT)) }}</td>
                    <td class="text-center">{{ number_format((float) $saleDetail->quantity, 0, '.', '') }}</td>
                    <td class="text-center">{{ strtoupper($saleDetail->unidad_medida ?: 'UND') }}</td>
                    <td>{{ data_get($saleDetail, 'product.title', $saleDetail->description) }}</td>
                    <td class="text-right">{{ number_format((float) ($saleDetail->price_base ?? 0), 2) }}</td>
                    <td class="text-right">{{ number_format((float) ($saleDetail->price_final ?? 0), 2) }}</td>
                    <td class="text-right">{{ number_format((float) ($saleDetail->igv ?? 0), 2) }}</td>
                    <td class="text-right">{{ number_format((float) ($saleDetail->discount ?? 0), 2) }}</td>
                    <td class="text-right">{{ number_format((float) ($saleDetail->subtotal ?? 0), 2) }}</td>
                </tr>
            @empty
                <tr>
                    <td colspan="9" class="text-center muted">No se encontraron detalles para este comprobante.</td>
                </tr>
            @endforelse

            @foreach ($salesAnticipos as $salesAnticipo)
                <tr>
                    <td class="text-center">ANT</td>
                    <td class="text-center">1</td>
                    <td class="text-center">UND</td>
                    <td>Anticipo de la factura {{ data_get($salesAnticipo, 'n_operacion') }}</td>
                    <td class="text-right">0.00</td>
                    <td class="text-right">0.00</td>
                    <td class="text-right">0.00</td>
                    <td class="text-right">0.00</td>
                    <td class="text-right">-{{ number_format((float) data_get($salesAnticipo, 'total', 0), 2) }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <table class="bottom">
        <tr>
            <td class="left-notes">
                <p class="note"><strong>IMPORTE EN LETRAS:</strong> {{ $totalInLetters }}</p>
                <p class="note">Representacion impresa de la {{ $documentType }}</p>
                <p class="note">Descargue XML desde: <span class="note-link">{{ env('APP_URL') }}</span></p>
                <div class="qr-wrap">
                    <table class="qr-table">
                        <tr>
                            <td>
                                @if ($qrImageBase64)
                                    <img class="qr-img" src="{{ $qrImageBase64 }}" alt="QR Comprobante">
                                @else
                                    <div class="qr-fallback">QR</div>
                                @endif
                            </td>
                            <td>
                                <div class="qr-code-text">{{ $qrPreviewText }}</div>
                            </td>
                        </tr>
                    </table>
                </div>
                <p class="note">{{ $sale->description ?: 'SIN OBSERVACIONES' }}</p>
            </td>
            <td class="right-totals">
                <table class="totals">
                    <tr>
                        <td><span class="label">Sub Total {{ $currency }}</span></td>
                        <td class="value">{{ number_format($subTotalSale, 2) }}</td>
                    </tr>
                    <tr>
                        <td><span class="label">Descuento {{ $currency }}</span></td>
                        <td class="value discount">-{{ number_format((float) ($sale->discount ?? 0) + $discountGlobalGeneral, 2) }}</td>
                    </tr>
                    <tr>
                        <td><span class="label">Exoneradas {{ $currency }}</span></td>
                        <td class="value">0.00</td>
                    </tr>
                    <tr>
                        <td><span class="label">Gravadas {{ $currency }}</span></td>
                        <td class="value">{{ number_format($subTotalSale, 2) }}</td>
                    </tr>
                    <tr>
                        <td><span class="label">IGV {{ $currency }}</span></td>
                        <td class="value">{{ number_format($igvTotal, 2) }}</td>
                    </tr>
                    <tr class="total-line">
                        <td><span class="label">Total a Pagar {{ $currency }}</span></td>
                        <td class="value">{{ number_format($totalSales, 2) }}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <div class="footer">BIENES TRANSFERIDOS EN LA AMAZONIA PARA SER CONSUMIDO EN LA MISMA.</div>
</div>
</body>
</html>
