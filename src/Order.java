
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Order
 */
@WebServlet(value = "/assignment05")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");

		int errorCount = 0;
		
		//-------------------------
		String quantity = request.getParameter("quantity").trim();	  
		int quantityNumber = 0;
		if (quantity.equals("")) 
		{
			request.setAttribute("quantityError", "Bạn phải nhập dữ liệu cho mục số lượng!");
			request.setAttribute("quantity", "1");
			errorCount++;
		} 
		else 
		{
			try 
			{
				quantityNumber = Integer.parseInt(quantity);
				if (quantityNumber < 1) 
				{
					request.setAttribute("quantityError", "Số lượng phải ít nhất là 1.");
					request.setAttribute("quantity", "1");
					errorCount++;
				}
				else request.setAttribute("quantity", quantityNumber);
			} 
			catch (NumberFormatException e) 
			{
				request.setAttribute("quantityError", "Dữ liệu cho trường số lượng phải là số nguyên dương.");
				request.setAttribute("quantity", "1");
				errorCount++;
			}
		}

		//-------------------------
		String customerName = request.getParameter("customerName").trim();
		if (customerName.equals(""))
		{
			request.setAttribute("customerNameError", "Chưa nhập tên khách hàng.");
			errorCount++;
		}
		else request.setAttribute("customerName", customerName);
		
		//-------------------------
		String customerPhone = request.getParameter("customerPhone").trim();
		if (customerPhone.equals(""))
		{
			request.setAttribute("customerPhoneError", "Chưa nhập số điện thoại.");
			errorCount++;
		}
		else 
		{
			Matcher customerPhoneMatcher = Pattern.compile("\\d{3}-\\d{3}-\\d{4}").matcher(customerPhone);
			if (!customerPhoneMatcher.matches()) 
			{
				request.setAttribute("customerPhoneError", "Số điện thoại không đúng định dạng.");
				errorCount++;
			}
			else request.setAttribute("customerPhone", customerPhone);
		}
		//-------------------------
		String customerEmail = request.getParameter("customerEmail").trim();
		if (!customerEmail.equals(""))
		{
			//Matcher customerEmailMatcher = Pattern.compile("").matcher(customerEmail);
			//if (customerEmailMatcher.matches())
			if (!customerEmail.contains("@"))
			{
				request.setAttribute("customerEmailError", "Email sai định dạng.");
				errorCount++;
			}
			else {
				request.setAttribute("customerEmail", customerEmail);
			}
		}
		
		//-------------------------
		String creditCardNumber = request.getParameter("cardNumber").trim();
		
		if (creditCardNumber.equals(""))
		{
			request.setAttribute("creditCardNumberError", "Bạn chưa nhập số thẻ credit card.");
			errorCount++;
		}
		else
		{
			Matcher creditCardMatcher = Pattern.compile("\\d{16}").matcher(creditCardNumber);
			if (!creditCardMatcher.matches()) 
			{
				request.setAttribute("creditCardNumberError", "Sai định dạng thẻ credit card.");
				errorCount++;
			}
			else request.setAttribute("cardNumber", creditCardNumber);
		}
		
		//-------------------------
		String creditCardMonth = request.getParameter("ExpirationMonth");
		String creditCardYear = request.getParameter("ExpirationYear");
		if (creditCardMonth.equals("")) {
			request.setAttribute("creditCardMonth", "Month");
			errorCount++;
			if (creditCardYear.equals(""))
			{
				request.setAttribute("creditCardYear", "Year");
				request.setAttribute("expireDateError", "Chưa chọn tháng và năm.");
			}
			else 
			{
				request.setAttribute("expireDateError", "Chưa chọn tháng.");
				request.setAttribute("ExpirationYear", creditCardYear);
			}
		}
		else
		{
			if (creditCardYear.equals(""))
			{
				request.setAttribute("ExpirationMonth", creditCardMonth);
				request.setAttribute("creditCardYear", "Year");
				request.setAttribute("expireDateError", "Chưa chọn năm.");
				errorCount++;
			}
			else
			{
				String Expiration = creditCardMonth.concat(" - ");
				Expiration = Expiration.concat(creditCardYear);
				request.setAttribute("expiration", Expiration);
			}
		}
		//-------------------------
		String monitor = request.getParameter("monitor");
		if (monitor != null)
		{
			request.setAttribute("monitor", "Yes");
		}
		else request.setAttribute("monitor", "No");
		
		//-------------------------
		String processor = request.getParameter("processor");
		if (processor != null)
		{
			request.setAttribute("processor", processor);
		}
		
		//-------------------------
		String[] peripherals = request.getParameterValues("peripherals");
		if (peripherals != null)
		{
			String tmp = "";
			for (int i=0; i<peripherals.length; i++)
			{
				tmp = tmp.concat(peripherals[i]);
				tmp = tmp.concat(", ");
			}
			StringBuilder p = new StringBuilder(tmp); 
	        p.setCharAt(tmp.lastIndexOf(','), '.'); 
			request.setAttribute("peripherals", p);
		}
		//-------------------------
		String url = "/assignment05/index.jsp";
		if (errorCount==0) url = "/assignment05/order-success.jsp";
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
