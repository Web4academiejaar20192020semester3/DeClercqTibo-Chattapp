package controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import domain.Person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class GetFriends extends AsynReqHandler {
    private ObjectMapper mapper = new ObjectMapper();

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Person user = (Person) request.getSession().getAttribute("user");
        ArrayList<Person> friends = user.getFriends();
        String friendJson = mapper.writeValueAsString(friends);
        return friendJson;
    }
}
