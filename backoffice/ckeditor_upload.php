<?php
/**
 * Uploader para CKEditor 5
 */

header('Content-Type: application/json');

// Define o diretório de upload
$uploadDir = __DIR__ . '/uploads/';
$uploadUrl = '/comunicacoes/backoffice/uploads/';

// Verifica se o diretório existe
if (!is_dir($uploadDir)) {
    mkdir($uploadDir, 0755, true);
}

if (isset($_FILES['upload'])) {
    $file = $_FILES['upload'];
    
    // Validações
    $allowedTypes = ['image/jpeg', 'image/png', 'image/gif', 'image/webp'];
    $maxSize = 5 * 1024 * 1024; // 5MB
    
    // Verifica tipo de ficheiro
    if (!in_array($file['type'], $allowedTypes)) {
        http_response_code(400);
        echo json_encode([
            'error' => [
                'message' => 'Tipo de ficheiro não permitido. Use apenas: JPG, PNG, GIF ou WEBP'
            ]
        ]);
        exit;
    }
    
    // Verifica tamanho
    if ($file['size'] > $maxSize) {
        http_response_code(400);
        echo json_encode([
            'error' => [
                'message' => 'Ficheiro muito grande. Máximo: 5MB'
            ]
        ]);
        exit;
    }
    
    // Gera nome único e seguro
    $extension = pathinfo($file['name'], PATHINFO_EXTENSION);
    $fileName = uniqid('img_', true) . '.' . $extension;
    $uploadPath = $uploadDir . $fileName;
    
    // Move o ficheiro
    if (move_uploaded_file($file['tmp_name'], $uploadPath)) {
        echo json_encode([
            'url' => $uploadUrl . $fileName
        ]);
    } else {
        http_response_code(500);
        echo json_encode([
            'error' => [
                'message' => 'Erro ao guardar o ficheiro. Verifica as permissões da pasta.'
            ]
        ]);
    }
} else {
    http_response_code(400);
    echo json_encode([
        'error' => [
            'message' => 'Nenhum ficheiro foi enviado.'
        ]
    ]);
}
?>