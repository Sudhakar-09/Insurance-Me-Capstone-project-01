package com.staragile.insurance.policy;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class MvcPolicyController {

	
	@Autowired
	PolicyService policySvc;
	
	@RequestMapping("mvchello")
	public String doSomething(){
		return "Hello World!!!";
	}
	
	
	@RequestMapping("/getallpolicy")
	public String getAllPolicies(HttpServletRequest req, HttpServletResponse res) {
		List<Policy> policyList = policySvc.getPolicies();
		req.getSession().setAttribute("policyList", policyList);
		return "policy.jsp";
	}
	
	
	
	
	@RequestMapping("/createpolicy")
	public String addPolicy(HttpServletRequest req, HttpServletResponse res) {
		Policy policy = new Policy();
		policy.setPolicyId(req.getParameter("id"));
		policy.setCustomerName(req.getParameter("name"));
		policy.setCustomerAddress(req.getParameter("address"));
		policy.setContactNumber(req.getParameter("contact"));
		policySvc.addPolicy(policy);
		return getAllPolicies(req,res);
	}
	
	@RequestMapping("/updatepolicy")
	public String updatePolicy(HttpServletRequest req, HttpServletResponse res) {
		Policy policy = new Policy();
		policy.setPolicyId(req.getParameter("id"));
		policy.setCustomerName(req.getParameter("name"));
		policy.setCustomerAddress(req.getParameter("address"));
		policy.setContactNumber(req.getParameter("contact"));
		policySvc.updatePolicy(req.getParameter("id"),policy);
		return getAllPolicies(req,res);
	}
	
	
	
	@RequestMapping("/deletepolicy")
	public String deletePolicy(HttpServletRequest req, HttpServletResponse res) {
		policySvc.deletePolicy(req.getParameter("id"));
		return getAllPolicies(req,res);
	}
}
