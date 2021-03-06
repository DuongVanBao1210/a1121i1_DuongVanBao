import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet",urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    public static List<Customer> customerList = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        customerList.add(new Customer("Mai Văn Hoàn","1983-08-20","Hà Nội"));
        customerList.add(new Customer("Nguyễn Văn Nam","1983-08-21","Bắc Giang"));
        customerList.add(new Customer("Nguyễn Thái Hòa","1983-08-22","Nam Định"));
        customerList.add(new Customer("Trần Đăng Khoa","1983-08-23","Hà Tây"));
        customerList.add(new Customer("Nguyễn Đình Thi","1983-08-24","Hà Nội"));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("customerList",customerList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/list.jsp");
        dispatcher.forward(request,response);
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
    }
}
