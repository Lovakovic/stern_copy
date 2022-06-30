document.getElementById('submit').addEventListener('click', function(event) {
    let validInput = true;
    let errorStyle = "dotted 4px red";

    let deleteButtonExists = document.getElementById('delete'), deleteButtonChecked = deleteButtonExists.checked;
    let title = document.getElementById('title'), titleLength = title.value.length;
    let description = document.getElementById('about'), descriptionLength = description.value.length;
    let content = document.getElementById('content'), contentLength = content.value.length;
    let photo = document.getElementById('photo'), photoUploaded = photo.value != "";
    let category = document.getElementById('category'), categoryChosen = category.value != 'odabir';

    if(titleLength < 5 || titleLength > 30) {
        validInput = false;

        title.style.border = errorStyle;
        document.getElementById('title-error').classList.replace('hide-error-msg', 'error-msg');
    }

    if(descriptionLength < 10 || descriptionLength > 100) {
        validInput = false;

        description.style.border = errorStyle;
        document.getElementById('about-error').classList.replace('hide-error-msg', 'error-msg');
    }

    if(contentLength < 1) {
        validInput = false;

        content.style.border = errorStyle;
        document.getElementById('content-error').classList.replace('hide-error-msg', 'error-msg');
    }

    if(!photoUploaded) {
        validInput = false;

        photo.style.border = errorStyle;
        document.getElementById('photo-error').classList.replace('hide-error-msg', 'error-msg');
    }

    if(!categoryChosen) {
        validInput = false;

        category.style.border = errorStyle;
        document.getElementById('category-error').classList.replace('hide-error-msg', 'error-msg');
    }

    if(!validInput && !deleteButtonChecked) {
        event.preventDefault();
    }
});