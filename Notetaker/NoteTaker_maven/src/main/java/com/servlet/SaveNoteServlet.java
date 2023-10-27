package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entite.Note;
import com.helper.FactoryProvider;


@WebServlet("/SaveNoteServlet")
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   try {
			PrintWriter out=response.getWriter();
		    String title=request.getParameter("title");
		    String Content=request.getParameter("content");
		    Note note=new Note(title, Content, new Date());
		    Session s=FactoryProvider.getFactory().openSession();
		    Transaction tx=s.beginTransaction();
		    s.save(note);
		    tx.commit();
		    s.close();
			out.println("<h1 style='text-align:center'>Note added sucessfully<h1>");
			out.println("<h1 style='text-align:center'><a href='All_Notes.jsp'>Show Notes</a><h1>");
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
