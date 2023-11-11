package com.staragile.insurance.policy;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PolicyController {

	
	@Autowired
	PolicyService policySvc;
	
	@RequestMapping("hello")
	public String doSomething(){
		return "Hello World!!!";
	}
	
	@RequestMapping("/seeddata")
	public String getPolicy(){
		System.out.println("Inside seeddata");
		Policy p1 = new Policy("1", "Sudhakar S", "1/3/14 aditya nagar", "879544216");
		policySvc.addPolicy(p1);
		
		p1 = new Policy("2", "John", "jonny's home address", "558765432");
		policySvc.addPolicy(p1);
		return "Data seeded successfully!!!";
	}
	
	@RequestMapping("/policy/{id}")
	public Optional<Policy> getPolicy(@PathVariable String id){
		System.out.println("Inside getPolicy");
		return policySvc.getPolicy(id);
	}
	
	@RequestMapping("/policy")
	public List<Policy> getPolicies(){
		return policySvc.getPolicies();
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/policy")
	public String addPolicy(@RequestBody Policy policy) {
		policySvc.addPolicy(policy);
		return "Successfully added!!";
	}
	
	@RequestMapping(method=RequestMethod.PUT, value="/policy/{id}")
	public String updatePolicy(@RequestBody Policy policy, @PathVariable String id) {
		policySvc.updatePolicy(id, policy);
		return "Updated successfully";
	}
	
	@RequestMapping(method=RequestMethod.DELETE, value="/policy/{id}")
	public String deletePolicy(@PathVariable String id) {
		policySvc.deletePolicy(id);
		return "Updated successfully";
	}
	
	
}
