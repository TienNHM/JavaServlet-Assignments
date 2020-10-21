
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class servlet_demo
 */
@WebServlet("/Validate")
public class Validate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Validate() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	private String FormSubmit_ass03_02(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Get the parameter values from the request
		String name = request.getParameter("customerName");
		String email = request.getParameter("customerEmail");
		String quantity = request.getParameter("quantity");

		// If any are empty, set the url to forward to to the error page.
		// Otherwise, forward to the normal reciept
		if (name.equals("") || email.equals("") || quantity.equals("")) {
			return "/error.jsp";
		} else {
			return "/assignment03/reciept_ass03_02.jsp";
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");

		String url = ""; // url to forward to
		// Get current action
		String action = request.getParameter("action");
		if (action.equals("formSubmit_ass03_02")) {
			url = FormSubmit_ass03_02(request, response);
		}
		else if (action.equals("formSubmit_ass03_01"))
		{
			
		}
		// Create the dispatcher from the url and perform the forward
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
