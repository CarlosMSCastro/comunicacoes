
document.addEventListener('DOMContentLoaded', () => {
    ClassicEditor
        .create(document.querySelector('#editor'), {
            toolbar: ['undo','redo','|','bold','italic','underline','|','bulletedList','numberedList','|','link','insertTable','|','alignment:left','alignment:center','alignment:right'],
            table: { contentToolbar: ['tableColumn','tableRow','mergeTableCells'] },
        })
        .then(editor => {
            editor.editing.view.change(writer => {
                writer.setStyle('font-family', 'Quicksand, sans-serif', editor.editing.view.document.getRoot());
                writer.setStyle('font-size', '14px', editor.editing.view.document.getRoot());
            });
        })
        .catch(error => console.error(error));
});
