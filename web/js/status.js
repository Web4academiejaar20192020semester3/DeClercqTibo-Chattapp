var button = document.getElementById("statusbutton");
button.onclick = setStatus;

var getStatusObject = new XMLHttpRequest();

function getNewStatus () {
    getStatusObject.open("GET", "Controller?action=ShowStatus", true);
    getStatusObject.onreadystatechange = getStatusData;
    getStatusObject.send(null);
}
var newStatusObject = new XMLHttpRequest();
function setStatus(){
    var status = document.getElementById("status").value;
    var information = "status="+ encodeURIComponent(status);
    newStatusObject.open("POST", "Controller?action=ChangeStatus",true)
    newStatusObject.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    newStatusObject.send(information);
    getNewStatus();
}

function getStatusData () {
    if (getStatusObject.status == 200) {
        if (getStatusObject.readyState == 4) {

            var status = getStatusObject.responseText;
            var quoteDiv = document.getElementById("showstatus");
            var quoteParagraph = quoteDiv.childNodes[0];

            if (quoteParagraph == null) {
                quoteParagraph = document.createElement('p');
                quoteParagraph.id = "statusText";
                quoteParagraph.appendChild(document.createTextNode("You are: "+ status));
                quoteDiv.appendChild(quoteParagraph);
            }
            else {
                console.log("1");
                quoteParagraph.removeChild(quoteParagraph.childNodes[0]);
                quoteParagraph.appendChild(document.createTextNode("You are: "+ status));
            }
        }
    }

}
