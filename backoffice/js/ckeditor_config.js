/**
 * CKEditor 5 - Configuração Completa com Upload de Imagens
 * Versão UMD com todos os recursos
 */

const {
    ClassicEditor,
    Essentials,
    Bold,
    Italic,
    Underline,
    Font,
    Paragraph,
    Heading,
    Link,
    List,
    BlockQuote,
    Image,
    ImageCaption,
    ImageStyle,
    ImageToolbar,
    ImageUpload,
    ImageResize,
    SimpleUploadAdapter,
    Alignment
} = CKEDITOR;

document.addEventListener('DOMContentLoaded', function() {
    
    // Configuração do CKEditor
    const editorConfig = {
        plugins: [
            Essentials,
            Bold,
            Italic,
            Underline,
            Font,
            Paragraph,
            Heading,
            Link,
            List,
            BlockQuote,
            Image,
            ImageCaption,
            ImageStyle,
            ImageToolbar,
            ImageUpload,
            ImageResize,
            SimpleUploadAdapter,
            Alignment
        ],
        toolbar: [
            'heading', '|',
            'bold', 'italic', 'underline', '|',
            'fontSize', 'fontColor', 'fontBackgroundColor', '|',
            'link', 'bulletedList', 'numberedList', '|',
            'alignment', '|',
            'imageUpload', 'blockQuote', '|',
            'undo', 'redo'
        ],
        image: {
            toolbar: [
                'imageStyle:inline',
                'imageStyle:block',
                'imageStyle:side',
                '|',
                'imageTextAlternative',
                '|',
                'toggleImageCaption'
            ],
            resizeUnit: 'px',
            resizeOptions: [
                {
                    name: 'resizeImage:original',
                    label: 'Original',
                    value: null
                },
                {
                    name: 'resizeImage:custom',
                    label: 'Custom',
                    value: 'custom'
                },
                {
                    name: 'resizeImage:50',
                    label: '50%',
                    value: '50'
                },
                {
                    name: 'resizeImage:75',
                    label: '75%',
                    value: '75'
                }
            ]
        },
        simpleUpload: {
            uploadUrl: '/comunicacoes/backoffice/ckeditor_upload.php',
            withCredentials: false
        }
    };
    
    // Inicializa todos os editores com class="ckeditor"
    document.querySelectorAll('.ckeditor').forEach(function(textarea) {
        ClassicEditor
            .create(textarea, editorConfig)
            .then(editor => {
                console.log('✅ CKEditor inicializado:', textarea.name || textarea.id);
                textarea.editorInstance = editor;
            })
            .catch(error => {
                console.error('❌ Erro ao inicializar CKEditor:', error);
            });
    });
    
    // Também suporta IDs com padrão "editor-*"
    document.querySelectorAll('[id^="editor-"]').forEach(function(textarea) {
        if (!textarea.classList.contains('ckeditor')) {
            ClassicEditor
                .create(textarea, editorConfig)
                .then(editor => {
                    console.log('✅ CKEditor inicializado:', textarea.id);
                    textarea.editorInstance = editor;
                })
                .catch(error => {
                    console.error('❌ Erro ao inicializar CKEditor:', error);
                });
        }
    });
});