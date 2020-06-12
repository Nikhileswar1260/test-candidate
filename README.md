# test-candidate
## code review

### Question 1
Please review the code azuredeploy.json (ARM template)
and main.tf (Terraform template)

### Question 2

#### My thought.

At first, we have to create a Network and subnets with the given subnet mask for both the data centers in two different regions EastUs and Wests

 Implement a load balancer with availability set for high availability.

 Implement  Express route to peer the networks between On-Premise and cloud. 

 So once we have those implemented the next step is to create a traffic manager for disaster recovery. 



#### Explanation about the attached Templates.



I have created a basic to a mid-level template that deploys Network and subnets in which VM's are available as an availability set for high availability. 

IP address will be taken as static or dynamic, Depends on the environment.

Assigned NSG Rules 

That it only creates a one Resource group in one region. If we apply the code same as the Answer given for Question 1.

Then we can have the same infrastructure in two different regions with two different Resource Groups.
