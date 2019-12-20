package controller;

import domain.Reply;
import domain.Topic;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class Blog extends RequestHandler {

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //Topics
        ArrayList<Topic> topics = new ArrayList<>();
        Topic  t1=new Topic("Was het een interessante projectweek?",0);
        Topic  t2=new Topic("Wat ben je van plan om te doen vandaag?",1);
        Topic  t3=new Topic("Naar welke muziek ben je momenteel aan het luisteren?",2);
        Topic  t4=new Topic("Wat zijn de examenvragen voor het vak Web4?",3);
        Topic  t5=new Topic("Waarom dragen Java developpers een bril?",4);

        //antwoorden
        t2.addReply(new Reply("jan","Dit project afmaken", 2));
        t5.addReply(new Reply("jan","Because they can't See Sharp", 7));

        topics.add( t1);
        topics.add( t2);
        topics.add( t3);
        topics.add( t4);
        topics.add( t5);

        request.setAttribute("topics",topics);
        return "blog.jsp";
    }
}
