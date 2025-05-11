const form = document.getElementById("personalInfoForm");

form.addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent form submission to handle validation

    // Get form values
    const name = document.getElementById("name").value;
    const email = document.getElementById("email").value;
    const age = document.getElementById("age").value;

    // Validation
    let valid = true;
    let errors = [];

    // Name validation (non-empty)
    if (name.trim() === "") {
        valid = false;
        errors.push("Name is required.");
    }

    // Email validation (contains '@')
    if (!email.includes("@")) {
        valid = false;
        errors.push("Please enter a valid email.");
    }

    // Age validation (positive number)
    if (age <= 0 || isNaN(age)) {
        valid = false;
        errors.push("Please enter a valid age.");
    }

    // If there are errors, show them
    if (!valid) {
        alert("Errors:\n" + errors.join("\n"));
    } else {
        alert("Form submitted!");
        form.reset(); // Reset form on successful submission
    }
});
