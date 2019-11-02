<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Retailer</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.3/examples/floating-labels/">

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">


</head>
<body>
<jsp:include page="../../partials/menu.jsp" />
<div class="modal-body">
							<form class="editUserForm"
								action="${pageContext.request.contextPath}/admin/edit/retailer?id=${retailer.retailerId}" method="post">
								<div class="row">
									<div class="col">
										<!-- FIRST NAME  -->
										<div class="form-group input-group-sm mb-1">
											<label for="Name" class="col-form-label">Name</label> <input
												type="text" class="form-control" id="Name" name="Name" value="${retailer.retailName}">
										</div>
										<!-- FIRST NAME  -->
									</div>
									<!-- LAST NAME -->
									<div class="col">
										<div class="form-group input-group-sm mb-1">
											<label for="Contact1" class="col-form-label">Contact1</label>
											<input type="tel" class="form-control" id="Contact1"
												name="Contact1" value="${retailer.retailContact1}">
										</div>
										<!-- LAST NAME -->
									</div>
								</div>
								<!-- EMAIL -->
								<div class="form-group input-group-sm mb-1">
									<label for="Contact2" class="col-form-label">Contact2</label> <input
										type="tel" class="form-control" id="Contact2"
										name="Contact2" value="${retailer.retailContact2}">
								</div>
								<!-- Phone Number -->
								<div class="form-group input-group-sm mb-1">
									<label for="SetTopBoxLimit" class="col-form-label">SetTop
										Box Limit</label> <input type="number" class="form-control"
										name="SetTopBoxLimit" id="SetTopBoxLimit" value="${retailer.boxLimit}"></input>
								</div>
								<div class="form-group input-group-sm mb-1">
									<label for="CreditLimit" class="col-form-label">Credit
										Limit</label> <input type="number" class="form-control"
										name="CreditLimit" id="CreditLimit" value="${retailer.creditLimit}"></input>
								</div>
								<div class="form-group input-group-sm mb-1">
									<label for="Commission%onSale" class="col-form-label">Commission
										% on Sale</label> <input type="number" class="form-control"
										name="Commission%onSale" id="Commission%onSale" value="${retailer.retailCommission}"></input>
								</div>
								<div class="form-group input-group-sm mb-1">
									<label for="ServiceCharge" class="col-form-label">Service
										Charge</label> <input type="number" class="form-control"
										name="ServiceCharge" id="ServiceCharge" value="${retailer.retailServiceCharge}"></input>
								</div>
								<div class="form-group input-group-sm mb-1">
									<label for="InventoryCost" class="col-form-label">Inventory
										Cost</label> <input type="number" class="form-control"
										name="InventoryCost" id="InventoryCost" value="${retailer.inventCost}"></input>
								</div>

								<div class="row">
									<div class="col">
										<!-- ADDRESS -->
										<fieldset>
											<legend>Address</legend>
											<!-- STREET ADDRESS 1 -->
											<div class="form-group input-group-sm mb-1">
												<label for="Address1" class="col-form-label">Address1</label>
												<input type="text" class="form-control" id="Address1"
													name="Address1" value="${retailer.retailAddress1}">
											</div>
											<!-- STREET ADDRESS 1 -->
											<!-- BEGIN STREET ADDRESS 2 -->
											<div class="form-group input-group-sm mb-1">
												<label for="Address2" class="col-form-label">Address2</label>
												<input type="text" class="form-control" id="Address2"
													name="Address2" value="${retailer.retailAddress2}">
											</div>
											<!-- END STREET ADDRESS 2 -->
											<div class="row">
												<!-- BEGIN CITY -->
												<div class="col">
													<div class="form-group input-group-sm mb-1">
														<label for="city" class="col-form-label">City</label> <input
															type="text" class="form-control" id="city" name="city" value="${retailer.retailCity}">
													</div>
												</div>
												<!-- END CITY -->
												<!-- BEGIN STATE -->
												<div class="col">
													<div class="form-group input-group-sm mb-1">
														<label for="state" class="col-form-label">State</label> <input
															type="text" class="form-control" id="state" name="state" value="${retailer.retailState}">
													</div>
												</div>
												<!-- END STATE -->
												<div class="col">
													<div class="form-group input-group-sm mb-1">
														<label for="Pincode/Zipcode" class="col-form-label">Pincode/Zipcode</label>
														<input type="number" class="form-control"
															id="Pincode/Zipcode" name="Pincode/Zipcode" value="${retailer.retailZip}">
													</div>
												</div>
											</div>
										</fieldset>
									</div>
								</div>
<!-- 								<div class="row"> -->
<!-- 									<div class="col"> -->
<!-- 										<div class="form-group input-group-sm mb-1"> -->
<%-- 											<%@ page import="java.text.SimpleDateFormat"%> --%>
<%-- 											<%@ page import="java.util.Date"%> --%>
<!-- 											<label for="example-date-input" class="col-form-label">Retailer -->
<!-- 												Creation Date</label> <input class="form-control" type="text" -->
<%-- 												value="<%=new SimpleDateFormat("MM/dd/yyyy").format(new Date())%>" --%>
<!-- 												id="example-date-input" disabled> -->
<!-- 										</div> -->
<!-- 										OPERATOR NAME -->
<!-- 									</div> -->
<!-- 								</div> -->
								<div class="form-group input-group-sm mb-1">
									<label for="Name" class="col-form-label">Admin Name</label> <input
										type="text" class="form-control" id="AdminName" value="Admin"
										Disabled>
								</div>


								<!-- 								<button type="button" class="btn btn-secondary" -->
								<!-- 									>Close</button> -->
								<button type="submit" class="btn btn-primary" name="action"
									value="Update Retailer">Update</button>

							</form>
						</div>

</body>
</html>