// Use the HTML created in practical 2, At the submission of this form create a Pet object in JavaScript filled with these values and log that object and equivalent JSON on the console.

document.getElementById('submitBtn').addEventListener('click', function () {
    // Get the form values
    var name = document.getElementById('petName').value;
    var age = document.getElementById('petAge').value;
    var weight = document.getElementById('petWeight').value;
    var type = document.getElementById('petType').value;
    var likes = document.getElementById('petLikes').value;

    var pet = {
        name: name,
        age: age,
        weight: weight,
        type: type,
        likes: likes
    };

    console.log('Pet Object:', pet);
    console.log('Pet Object (JSON):', JSON.stringify(pet));
});