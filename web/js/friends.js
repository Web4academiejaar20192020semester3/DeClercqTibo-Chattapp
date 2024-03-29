var newStatusObject = new XMLHttpRequest();
var getFriendsObject = new XMLHttpRequest();
var button = document.getElementById("friendbutton");


button.onclick = addFriend;

function addFriend() {
    var id = document.getElementById("userid").value;
    var information = "userid=" + encodeURIComponent(id);
    newStatusObject.open("POST", "Controller?action=AddFriend", true);
    newStatusObject.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    newStatusObject.send(information);

}

function getFriends() {
    getFriendsObject.open("GET", "Controller?action=GetFriends", true);
    getFriendsObject.onreadystatechange = getFriendData;
    getFriendsObject.send(null);

}

function getFriendData() {
    if (getFriendsObject.status == 200) {
        if (getFriendsObject.readyState == 4) {
            var serverResponse = JSON.parse(getFriendsObject.responseText);
            var table = document.getElementsByTagName("tbody")[0];

            table.innerHTML = "";
            for (var i = 0; i < serverResponse.length; i++) {
                var FriendsTr = document.createElement("tr");
                FriendsTr.id = serverResponse[i].userId;
                FriendsTr.addEventListener("click", function () {
                    openChat(this.id);
                });
                var FriendsFirstName = document.createElement("td");
                FriendsFirstName.innerText = serverResponse[i].firstName;

                var FriendsLastName = document.createElement("td");
                FriendsLastName.innerText = serverResponse[i].lastName;

                var FriendsStatus = document.createElement("td");
                FriendsStatus.innerText = serverResponse[i].status;

                FriendsTr.appendChild(FriendsFirstName);
                FriendsTr.appendChild(FriendsLastName);
                FriendsTr.appendChild(FriendsStatus);
                table.appendChild(FriendsTr);

            }


            setTimeout("getFriends()", 5000);
        }
    }

    function openChat(id) {
        sendMessage(id, "")
        $('.msg_wrap').show();
        $('.msg_box').show();
        $('.msg_head').show();
    }

}
