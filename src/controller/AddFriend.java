package controller;

import domain.Person;
import domain.PersonService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddFriend extends AsynReqHandler {
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        PersonService personService = super.getPersonService();
        HttpSession session = request.getSession();

        Person user = (Person) session.getAttribute("user");
        String userID = request.getParameter("userid");
        Person newFriend = personService.getPerson(userID);

        user.addFriend(newFriend);
        newFriend.addFriend(user);
        return "";
    }
}
