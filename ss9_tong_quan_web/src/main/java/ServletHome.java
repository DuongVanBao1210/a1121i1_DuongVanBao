import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletHome",urlPatterns = "/display-discount")
public class ServletHome extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        double price = Integer.parseInt(request.getParameter("price"));
        double discount = Integer.parseInt(request.getParameter("discount"));
        double amount = price *discount*0.01;
        double discount_price = price - amount;
        request.setAttribute("description", description);
        request.setAttribute("price", price);
        request.setAttribute("discount", discount);
        request.setAttribute("discount_price", discount_price);
        RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
