# Hybrid AD  

## Project Description
Enterprise infrastructure lab showing hybrid identity management and modern workplace services. This project combines Active Directory with Azure AD, including automation and management of infrastructure services. This is a better version of Active Directory Bulk user creation page i made a while ago.

## Key Features 
  - Active Directory and Azure AD
  - Powershell
  - Enterprise Services (DHCP, DNS, NAT)
  - HelpDesk infrastructure (osTicket)
  - SQL Server

## Prerequisites
  - VirtualBox
  - Windows Server 2022 ISO
  - Windows 11 ISO
  - Azure account

## Network Configuration 
  - Internet NIC: //
  - Internal NIC: 172.16.0.1/24
  - DC: 172.16.0.2

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

  - root domain = corp.local

     ![image](https://github.com/user-attachments/assets/db403b53-49b1-45e2-9173-f666fa17a461)


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

  




  

    






    


