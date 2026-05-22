<?php

namespace App\Services;

use Exception;
use Illuminate\Support\Facades\Http;

/**
 * Servicio para consultar información en la API de SUNAT/RENIEC
 * 
 * Proporciona métodos para consultar datos de DNI y RUC
 * utilizando la API dniruc.apisperu.com
 * 
 * @package App\Services
 */
class ApiPeruService
{
    /**
     * Token para autenticación en API Peru
     */
    private string $token;

    /**
     * URL base de la API
     */
    private string $baseUrl = 'https://dniruc.apisperu.com/api/v1';

    /**
     * Timeout en segundos para las peticiones HTTP
     */
    private int $timeout = 10;

    /**
     * Constructor del servicio
     * 
     * @throws Exception
     */
    public function __construct()
    {
        $this->token = config('services.apis_peru.token') ?? env('APIS_PERU_TOKEN');
        
        if (empty($this->token)) {
            throw new Exception('Token de API Peru no configurado');
        }
    }

    /**
     * Consultar datos de un DNI
     * 
     * @param string $dni Número de DNI sin guiones (8 dígitos)
     * @return array Datos del DNI o error con estructura:
     *   - success: boolean
     *   - code: int (200, 400, 404, 500)
     *   - data: array (si success=true)
     *   - message: string (si success=false)
     */
    public function consultarDni(string $dni): array
    {
        try {
            // Validar que sea un DNI válido (8 dígitos)
            if (!preg_match('/^\d{8}$/', $dni)) {
                return [
                    'success' => false,
                    'message' => 'El DNI debe contener exactamente 8 dígitos',
                    'code' => 400
                ];
            }

            $url = "{$this->baseUrl}/dni/{$dni}?token={$this->token}";

            $response = Http::timeout($this->timeout)
                ->withoutVerifying()
                ->get($url);

            if (!$response->successful()) {
                return [
                    'success' => false,
                    'message' => 'Error al consultar el DNI en la API externa',
                    'code' => $response->status(),
                    'error' => $response->json()
                ];
            }

            $data = $response->json();

            // Verificar si la respuesta contiene datos válidos
            if (isset($data['success']) && !$data['success']) {
                return [
                    'success' => false,
                    'message' => $data['message'] ?? 'DNI no encontrado',
                    'code' => 404
                ];
            }

            // Transformar los datos a un formato consistente
            return [
                'success' => true,
                'code' => 200,
                'data' => [
                    'nombre' => $data['nombres'] ?? '',
                    'apellido_paterno' => $data['apellido_paterno'] ?? $data['apellidoPaterno'] ?? '',
                    'apellido_materno' => $data['apellido_materno'] ?? $data['apellidoMaterno'] ?? '',
                    'dni' => $data['numero'] ?? $data['dni'] ?? $dni,
                    'genero' => $data['sexo'] ?? null,
                    'fecha_nacimiento' => $data['fecha_nacimiento'] ?? null,
                    'estado' => $data['estado'] ?? null,
                    'raw_data' => $data
                ]
            ];
        } catch (Exception $e) {
            return [
                'success' => false,
                'message' => 'Error al procesar la consulta: ' . $e->getMessage(),
                'code' => 500
            ];
        }
    }

    /**
     * Consultar datos de un RUC
     * 
     * @param string $ruc Número de RUC sin guiones (11 dígitos)
     * @return array Datos del RUC o error con estructura:
     *   - success: boolean
     *   - code: int (200, 400, 404, 500)
     *   - data: array (si success=true)
     *   - message: string (si success=false)
     */
    public function consultarRuc(string $ruc): array
    {
        try {
            // Validar que sea un RUC válido (11 dígitos)
            if (!preg_match('/^\d{11}$/', $ruc)) {
                return [
                    'success' => false,
                    'message' => 'El RUC debe contener exactamente 11 dígitos',
                    'code' => 400
                ];
            }

            $url = "{$this->baseUrl}/ruc/{$ruc}?token={$this->token}";

            $response = Http::timeout($this->timeout)
                ->withoutVerifying()
                ->get($url);

            if (!$response->successful()) {
                return [
                    'success' => false,
                    'message' => 'Error al consultar el RUC en la API externa',
                    'code' => $response->status(),
                    'error' => $response->json()
                ];
            }

            $data = $response->json();

            // Verificar si la respuesta contiene datos válidos
            if (isset($data['success']) && !$data['success']) {
                return [
                    'success' => false,
                    'message' => $data['message'] ?? 'RUC no encontrado',
                    'code' => 404
                ];
            }

            // Transformar los datos a un formato consistente
            return [
                'success' => true,
                'code' => 200,
                'data' => [
                    'ruc' => $data['ruc'] ?? $ruc,
                    'razon_social' => $data['razon_social'] ?? $data['razonSocial'] ?? $data['razonsocial'] ?? '',
                    'nombre_comercial' => $data['nombre_comercial'] ?? $data['nombreComercial'] ?? '',
                    'tipo_contribuyente' => $data['tipo_contribuyente'] ?? $data['tipoContribuyente'] ?? null,
                    'estado' => $data['estado'] ?? null,
                    'condicion' => $data['condicion'] ?? null,
                    'fecha_inicio_actividad' => $data['fecha_inicio_actividad'] ?? $data['fechaInicioActividad'] ?? null,
                    'sistema_emision' => $data['sistema_emision'] ?? $data['sistemaEmision'] ?? null,
                    'ubigeo' => $data['ubigeo'] ?? null,
                    'direccion' => $data['direccion'] ?? null,
                    'raw_data' => $data
                ]
            ];
        } catch (Exception $e) {
            return [
                'success' => false,
                'message' => 'Error al procesar la consulta: ' . $e->getMessage(),
                'code' => 500
            ];
        }
    }
}
