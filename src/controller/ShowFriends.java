package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import domain.Person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class ShowFriends extends RequestHandler {

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        ObjectMapper mapper = new ObjectMapper();
        Person user = (Person) session.getAttribute("user");
        ArrayList<Person> vrienden = user.getVrienden();
        String json = mapper.writeValueAsString(vrienden);
        return json;
    }
}
