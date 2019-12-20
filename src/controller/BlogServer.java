package controller;


import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@ServerEndpoint("/comment")
public class BlogServer {
    public static final Set<Session> sessions = Collections.synchronizedSet(new HashSet<>());

    @OnOpen
    public void open(Session session) {
        System.out.println(session.getId() + " is gestart");
        sessions.add(session);
    }

    @OnClose
    public void close(Session session) {
        System.out.println(session.getId() + " is gestopt");
        sessions.remove(session);
    }

    @OnMessage
    public void message(String message, Session session) {
        try {
            for (Session s : sessions) {
                s.getBasicRemote().sendText(message);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
