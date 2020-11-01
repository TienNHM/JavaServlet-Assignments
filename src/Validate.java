
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// @WebServlet("/Validate")
@WebServlet(value = "/form_processing.jsp")
public class Validate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public Validate() {
		super();
	}

	private String FormSubmit_ass03_01(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String quantity = request.getParameter("quantity");
		if (quantity.equals("")) {
			request.setAttribute("backURL", "/assignment03/ass03_01.jsp");
			return "/error.jsp";
		} else {
			return "/assignment03/reciept_ass03_01.jsp";
		}
	}

	private String FormSubmit_ass03_02(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Get the parameter values from the request
		String name = request.getParameter("customerName");
		String email = request.getParameter("customerEmail");
		String quantity = request.getParameter("quantity");

		// If any are empty, set the url to forward to to the error page.
		// Otherwise, forward to the normal reciept
		if (name.equals("") || email.equals("") || quantity.equals("")) {
			request.setAttribute("backURL", "/assignment03/ass03_02.jsp");
			return "/error.jsp";
		} else {
			return "/assignment03/reciept_ass03_02.jsp";
		}
	}

	private String FormSubmit_ass03_03(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String monitor = request.getParameter("monitor");
		String processor = request.getParameter("processor");
		String[] peripherals = request.getParameterValues("peripherals");

		String processor_submit = "";
		if (processor != null) {
			processor_submit = (String) processor;
			if (processor.equals("Celeron D")) {
				processor_submit += "<br /> <i>Have you considered a more powerful processor?</i>";
			}
		} else {
			processor_submit += "No processor selected.";
		}

		String accessories = "";
		if (monitor != null) {
			accessories = "Monitor <br />";
		}
		if (peripherals != null) {
			for (int i = 0; i < peripherals.length; i++) {
				accessories += (String) peripherals[i] + "<br />";
			}
		}

		request.setAttribute("processor", processor_submit);
		request.setAttribute("accessories", accessories);
		return "/assignment03/reciept_ass03_03.jsp";
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		// Get current action
		String action = request.getParameter("action");
		if (action.equals("back")) {
			request.getRequestDispatcher(request.getParameter("backURL")).forward(request, response);
		} else {
			String url = ""; // url to forward to
			
			if (action.equals("formSubmit_ass03_01")) {
				url = FormSubmit_ass03_01(request, response);
			} else if (action.equals("formSubmit_ass03_02")) {
				url = FormSubmit_ass03_02(request, response);
			} else if (action.equals("formSubmit_ass03_03")) {
				url = FormSubmit_ass03_03(request, response);
			} else if (action.equals("back_ass03_01")) {
				url = "/assignment03/ass03_01.jsp";
			} else if (action.equals("back_ass03_02")) {
				url = "/assignment03/ass03_02.jsp";
			} else if (action.equals("back_ass03_03")) {
				url = "/assignment03/ass03_03.jsp";
			}
			
			// Create the dispatcher from the url and perform the forward
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
