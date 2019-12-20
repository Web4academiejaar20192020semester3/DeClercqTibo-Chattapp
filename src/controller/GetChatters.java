package controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import domain.Person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class GetChatters extends AsynReqHandler {
    private ObjectMapper mapper = new ObjectMapper();

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Person person = (Person) request.getSession().getAttribute("user");
        return person.getChatter();
    }

}
