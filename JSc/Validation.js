function Required(ctrlID, ctrlName) {
    var txtControl = document.getElementById(ctrlID);
    var string = document.getElementById(ctrlID).value;
    var spaceCount;

    if (txtControl.value == '') {
        swal({
            title: "Please Correctly Check",
            text: ctrlName + '.',
            icon: "error",
            button: "Ok",
        });
        txtControl.focus();
        return false;
    }
    else {
        spaceCount = 0;
        for (var count = 0; count < string.length; count++) {
            var ch = string.substring(count, count + 1);

            if (ch == ' ') {
                spaceCount++;
            }
        }
        if (spaceCount == string.length) {
            swal({
                title: "Please Correctly Check",
                text: ctrlName + '.',
                icon: "error",
                button: "Ok",
            });
            txtControl.value = "";
            txtControl.focus();
            return false;
        }
    }

    return true;
}