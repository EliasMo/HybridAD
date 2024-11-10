# HybridAD  

## Project Description
Enterprise infrastructure lab showing hybrid identity management and modern workplace services. This project combines Active Directory with Azure AD, including automation and management of infrastructure services. 

## Key Features 
  - Active Directory and Azure AD
  - Powershell
  - Enterprise Services (DHCP, DNS, NAT)
  - HelpDesk infrastructure (osTicket)
  - SQL Server

## Prerequisites
  - VMware Workstation
  - Windows Server 2022 ISO
  - Windows 11 ISO
  - Azure account

## Network Configuration 
  - Internet NIC: 192.168.1.0/24
  - Internal NIC: 172.16.0.0/24
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
    ![image](https://github.com/user-attachments/assets/6d77e160-9577-47ee-b0b7-72dff4639131)






    


