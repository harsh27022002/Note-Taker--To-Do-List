package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.entities.Note;
import com.helper.FactoryProvider;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.FactoryProvider;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			 int noteId=Integer.parseInt(request.getParameter("note_id").trim());
			 
			 Session s2 = FactoryProvider.getFactory().openSession();
			 Transaction tx = s2.beginTransaction();
			 
			 Note note=(Note)s2.get(Note.class, noteId);
			 s2.delete(note);
			 
			tx.commit(); 
			s2.close();
			response.sendRedirect("all_notes.jsp");
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	
	
	}

	
	
	}


