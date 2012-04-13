/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Field;
import model.GameInformation;
import model.Player;
import model.Wuerfel;

/**
 *
 * @author rainer
 */
public class GameServlet extends HttpServlet {
    private GameInformation gameInfo;
    private Player pl1, pl2;
    private Wuerfel wuerfel;
    private List<Field> fields;

    @Override
    public void init() throws ServletException {
        super.init();
        gameInfo = new GameInformation();
        wuerfel = new Wuerfel();
        fields = new ArrayList<Field>();
        
        pl1 = new Player();
        pl1.setName("Super Mario");
        pl1.setActPosition(43);
        
        pl2 = new Player();
        pl2.setName("Computer");
        pl2.setActPosition(45);
        
        gameInfo.addPlayer("Spieler 1", pl1);
        gameInfo.addPlayer("Spieler 2", pl2);
        
    }
    
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /*
             * TODO output your page here. You may use following sample code.
             */
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet GameServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet GameServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
        //processRequest(request, response);
        String action = request.getParameter("action");
        
        if (action == null) {
            return;
        }
        
        if (action.equals("wuerfeln")) {                           
            HttpSession session = request.getSession(true);
            this.gameInfo.incrementRound();
            
            //player to cube
            this.pl1.wuerfel();
            
            session.setAttribute("wuerfel", pl1.getWuerfel());
            
            //computer to cube
            pl2.wuerfel();
            gameInfo.setCubeComputer(pl2.getWuerfel().getNumber());
            session.setAttribute("gameInfo", gameInfo);
            
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/table.jsp");
            dispatcher.forward(request, response);
        } else {
            
        }  
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        //TODO
        // 
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
