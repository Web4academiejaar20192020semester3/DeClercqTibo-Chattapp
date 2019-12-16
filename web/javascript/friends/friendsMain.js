var friendsObject = new XMLHttpRequest();
var addFriendbutton = document.getElementById('addFriendbutton');

addFriendbutton.onclick = addFriend;

function addFriend() {
    var id = document.getElementById("userid").value;
    var information = "userid=" + encodeURIComponent(id);
    newStatusObject.open("POST", "Controller?action=AddFriend", true);
    newStatusObject.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    newStatusObject.send(information);
}
function getFriends() {
    friendsObject.open("GET", "Controller?action=GetFriends", true);
    friendsObject.onreadystatechange = getFriendData;
    friendsObject.send(null);

}
