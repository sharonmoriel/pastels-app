import "bootstrap";

// Disable review button after submitting a form

$("#reviewSubmitButton").on("click", function() {
    $("#reviewButton").prop("disabled", true);
});

