package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Retailer;
import com.service.InfinityService;

/**
 * Servlet implementation class AdminEditRetailerServlet
 */
public class AdminEditRetailerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEditRetailerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("delete")){
			try{
				InfinityService service = new InfinityService();
				int retailerId = Integer.parseInt(request.getParameter("id"));
				System.out.println("RetailerId: " + retailerId);
				int result = service.deleteRetailerById(retailerId);
				System.out.println("result = " + result);
				
				request.getRequestDispatcher("/Views/Admin/temp_retailer_admin.jsp").forward(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		else if(action.equalsIgnoreCase("update")){
			try{
				int retailerId = Integer.parseInt(request.getParameter("id"));
				System.out.println("RetailerId: " + retailerId);
				InfinityService service = new InfinityService();
				Retailer retailer = service.getRetailerById(retailerId);
				System.out.println(retailer);
				HttpSession session = request.getSession();
				session.setAttribute("retailer", retailer);
				session.setAttribute("retailer_id", retailerId);
				request.getRequestDispatcher("/Views/Admin/AdminEditRetailerMgmt.jsp").forward(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
//			request.getRequestDispatcher("/Views/Admin/AdminEditRetailerMgmt.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		String action = request.getParameter("action");
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("Post retailer Id: " + id);
		Retailer retailer = new Retailer();
		
		retailer.setRetailerId(id);
		retailer.setRetailName(request.getParameter("Name"));
		retailer.setRetailContact1(request.getParameter("Contact1"));
		retailer.setRetailContact2(request.getParameter("Contact2"));
		retailer.setBoxLimit(Integer.parseInt(request.getParameter("SetTopBoxLimit")));
		retailer.setRetailCommission(Integer.parseInt(request.getParameter("Commission%onSale")));
		retailer.setRetailServiceCharge(Integer.parseInt(request.getParameter("ServiceCharge")));
		retailer.setInventCost(Integer.parseInt(request.getParameter("InventoryCost")));
		retailer.setRetailAddress1(request.getParameter("Address1"));
		retailer.setRetailAddress2(request.getParameter("Address2"));
		retailer.setRetailCity(request.getParameter("city"));
		retailer.setRetailState(request.getParameter("state"));
		retailer.setRetailZip(Integer.parseInt(request.getParameter("Pincode/Zipcode")));
		
		
		System.out.println(retailer);

		
		
		if(action.equalsIgnoreCase("update retailer")){
			try{
				InfinityService service = new InfinityService();
				int result = service.updateRetailerById(id, retailer);
				System.out.println("Update result: " + result);
				request.getRequestDispatcher("/Views/Admin/temp_retailer_admin.jsp").forward(request, response);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}

}
