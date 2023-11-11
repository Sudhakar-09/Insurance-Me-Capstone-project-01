package com.staragile.insurance.policy;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class PolicyTest {

    @Test
    public void testPolicyConstructor() {
        // Test the constructor that initializes the policy
        Policy policy = new Policy("12345", "John Doe", "123 Main St", "555-123-4567");

        // Verify that the policy object is created correctly
        assertEquals("12345", policy.getPolicyId(), "Policy ID should match");
        assertEquals("John Doe", policy.getCustomerName(), "Customer Name should match");
        assertEquals("123 Main St", policy.getCustomerAddress(), "Customer Address should match");
        assertEquals("555-123-4567", policy.getContactNumber(), "Contact Number should match");
    }

    @Test
    public void testPolicyToString() {
        // Test the toString() method of the Policy class
        Policy policy = new Policy("67890", "Alice Smith", "456 Elm St", "555-987-6543");

        // Verify that the toString() method produces the expected string representation
        String expectedToString = "Policy ID: 67890, Customer Name: Alice Smith, Customer Address: 456 Elm St, Contact Number: 555-987-6543";
        assertEquals(expectedToString, policy.toString(), "toString() should produce the expected output");
    }

    @Test
    public void testPolicyEquality() {
        // Test the equality of two Policy objects
        Policy policy1 = new Policy("12345", "John Doe", "123 Main St", "555-123-4567");
        Policy policy2 = new Policy("12345", "John Doe", "123 Main St", "555-123-4567");

        // Verify that policy1 and policy2 are considered equal
        assertEquals(policy1, policy2, "Policy objects should be equal");
    }
}