# Hybrid AD Part 1 

## Project Description
A comprehensive enterprise infrastructure lab demonstrating Windows Server management and enterprise services deployment. This project showcases automated Active Directory management and core infrastructure services, with planned expansion into hybrid cloud integration. This is a updated version of Active Directory Bulk user creation page I made a while ago.

## Technical Skills Demonstrated
- Windows Server 2022 Infrastructure Management
- Active Directory Domain Services Implementation
- Network Services Configuration (DHCP, DNS, RAS/NAT)
- PowerShell Automation & Scripting
- Group Policy Management & Security Controls
- Enterprise Network Architecture
- System Documentation & Process Implementation
- Infrastructure Security Implementation

## Key Features 
  - Active Directory and Azure AD
  - Enterprise Services (DHCP, DNS, NAT)

## Prerequisites
  - VirtualBox
  - Windows Server 2022 ISO
  - Windows 11 ISO
  - Azure account

## Network Configuration 
  - Internet NIC: //
  - Internal NIC: 172.16.0.1/24
  - DC: 172.16.0.1

## Project Architecture
![image](https://github.com/user-attachments/assets/44e02c1b-f906-4fa6-88d3-4844c920bd08)

## Network Component Overview 

| Component            | Description                      | Notes                                              |
|----------------------|----------------------------------|----------------------------------------------------|
| Internet Cloud       | External internet connection      | Connected to NIC (Internet)                         |
| Windows Server 2022  | Main server hosting AD DS, RAS/NAT| Connected to NIC (Internet) and NIC (Internal)      |
| Domain/AD DS         | Active Directory Domain Services  | Part of Windows Server 2022 (DC)                    |
| RAS/NAT              | Routing and Remote Access / NAT   | Part of Windows Server 2022 (DC)                    |
| DHCP                 | Dynamic Host Configuration       | Part of Windows Server 2022 (DC)                    |
| DNS                 | Domain Name System                 | Part of Windows Server 2022 (DC)                    |
| SQL Server           | SQL                             | Part of Windows Server 2022 (DC)                    |
| Azure AD             | Azure Active Directory        | Part of Windows Server 2022 (DC)                    |
| VMWare Network       | Internal network for VMs           | Connected to NIC (Internal) on Windows Server 2022  |
| Client 1 (Windows)   | Connected to VMWare               | Connected to NIC (Internal) on VMWare Network       |
| Client 2 (Linux)     | Connected to VMWare               | Connected to NIC on VMWare Network                |


## Setting up VMware DC VM 
  - Install Windows Server 2022:
      ![image](https://github.com/user-attachments/assets/8cc399eb-2ea8-42e1-afaf-3848a6bf358b)

  - Configure NAT configuration for DC
      ![image](https://github.com/user-attachments/assets/a511e19d-86da-4239-9e72-079cc684100d)
    
      ![image](https://github.com/user-attachments/assets/303bda4f-31d9-4242-b222-646ed7440e3a)
    
    

  - Configure Internal NAT

     ![image](https://github.com/user-attachments/assets/a5089067-b298-47ec-a5bd-a0cba5ca0d93)

      ![image](https://github.com/user-attachments/assets/13934cd4-a77d-4ea1-8cf1-c529e273aec0)


## Install AD Domain Services 

- Active Directory Domain Services

    ![image](https://github.com/user-attachments/assets/19748b36-4789-42b5-8c23-4c365266cbd7)

  - root domain = internalcompany.com

     ![image](https://github.com/user-attachments/assets/1aff9801-c05b-4e4f-9408-4a99c778d732)




## Install RAS and NAT

- RAS

  ![image](https://github.com/user-attachments/assets/6a07a01e-19de-4580-9152-02dfc84b536f)

- Install Routing

  ![image](https://github.com/user-attachments/assets/ee7e00cd-3452-409a-b577-9f95f930159d)


- Enable NAT

   ![image](https://github.com/user-attachments/assets/766b3628-e165-4936-bcbd-015c2e107146)
  
## Install DHCP Server 


- DHCP Server

  ![image](https://github.com/user-attachments/assets/a508ffa9-d224-4a27-b1d0-04295a54465f)

- DHCP Range
  ![image](https://github.com/user-attachments/assets/18de98b6-6761-4613-9865-8874974f96ff)

  
## Create Clients Workstations 

- OU and User Creation

  ![image](https://github.com/user-attachments/assets/b8a0c8c6-aa1b-4666-ba23-a480867bdd16)




## Create Client Windows Workstations and Connectng them via Domain

  - Entering in the domain

    ![image](https://github.com/user-attachments/assets/74e5ee78-08e2-4e45-bda8-1e9cf9b41aa8)


    
## AD Structure and Group Policies 

 - Created a basic AD enterprise structure : Admin, Groups, Resources for employees, Employees and Departments sections. 

  ![image](https://github.com/user-attachments/assets/8adb6e37-69a4-4a3d-9e60-885199cc4fd5)

- Group Policy Management - which includes passwords, account lockout, audit, workstation, software, USB, Windows Update and control panel policies.

  ![image](https://github.com/user-attachments/assets/4d9ff60f-8809-4425-8b55-5cccad0228cd)


- Password Policy GPO - this will be used on the Domain 

  ![image](https://github.com/user-attachments/assets/b1bb0cf6-0f0d-4847-9d34-10f466e9d55a)


- Account Lockout GPO - used on the Domain

  ![image](https://github.com/user-attachments/assets/26a5ba4a-3bad-47db-8a6d-84f990506eba)



## Testing Policies 

  - Checking to see if the Password policies are working using password1

    ![image](https://github.com/user-attachments/assets/1aacd6b5-2453-47e1-9267-9178b8a43581)

  - Success! It did not meet the password policy i created

    ![image](https://github.com/user-attachments/assets/dc139e8e-b32d-4d42-9304-363ed5408f47)

  - Lock out Policy is working

    ![image](https://github.com/user-attachments/assets/5b6c2a2c-efc0-4239-930e-0479a5f84425)

  - Status of the account on Active Directory Users

    ![image](https://github.com/user-attachments/assets/8db886f8-afdf-4025-b5f7-06e4b4282dfb)


## Powershell Bulk User 

- Using create_users.ps1

  ![image](https://github.com/user-attachments/assets/ca6fa177-04b0-4d12-a063-b0a29f6bd14b)

- Users in all departments OU

  ![image](https://github.com/user-attachments/assets/61822a6e-2fbc-4dc5-93a1-1d755ed4df0d)

- Customer Support

  ![image](https://github.com/user-attachments/assets/ed37a8b8-ee31-4e1f-a635-97c1eb9fe938)


  
## Admin Creation 

- Admin User account

  ![image](https://github.com/user-attachments/assets/3fec34ce-5634-4867-a03f-6200b9323d43)


## Project Status & Future Developments

### Completed Features
- Successfully implemented core Windows Server 2022 infrastructure
- Configured enterprise-level Active Directory environment
- Established network services (DHCP, DNS, NAT)
- Created comprehensive OU structure and security policies
- Implemented PowerShell automation for bulk user creation
- Configured and tested Group Policy Management
- Validated security controls including:
  * Password policies
  * Account lockout mechanisms
  * User access controls
  
### Project Outcomes
- Functioning enterprise-level Active Directory environment
- Automated user management capabilities
- Secure and organized infrastructure
- Documented deployment process
- Tested and verified security policies

### Future Developments
- Azure AD integration
- Hybrid identity management implementation
- Modern workplace services integration
- Cloud-based resource management
- Additional security features and monitoring



This project shows enterprise on preme management - the hybrid section will be out in part 2 









    


