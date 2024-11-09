# HybridAD  

## Project Description
Enterprise infrastructure lab showing hybrid identity management and modern workplace services. This project will simulate production environment combining Active Directory with Azure AD, including automation and management of infrastructure services.

## Key Features 
  - Active Directory and Azure AD
  - Powershell
  - Enterprise Services (DHCP, DNS, NAT)
  - HelpDesk infrastructure(osTicket)
  - Project Management (Jira)
  - SQL Server

## Prerequisites
  - VMware Workstation
  - Windows Server 2022 ISO
  - Windows 11 ISO
  - Azure free account

## Network Configuration 
  - Internet NIC: //172.16.0.1/30
  - Internal NIC: //192.168.0.0/24
  - DC
  - Client

## Project Architecture

## Network Component Overview 

| Component            | Description                      | Notes                                              |
|----------------------|----------------------------------|----------------------------------------------------|
| Internet Cloud       | External internet connection      | Connected to NIC (Internet)                         |
| Windows Server 2022  | Main server hosting AD DS, RAS/NAT| Connected to NIC (Internet) and NIC (Internal)      |
| Domain/AD DS         | Active Directory Domain Services  | Part of Windows Server 2022 (DC)                    |
| RAS/NAT              | Routing and Remote Access / NAT   | Part of Windows Server 2022 (DC)                    |
| DHCP                 | Dynamic Host Configuration       | Part of Windows Server 2022 (DC)                    |
| VMWare Network       | Internal network for VMs           | Connected to NIC (Internal) on Windows Server 2022  |
| Client 1 (Windows)   | Virtual machine connected to VMWare| Connected to NIC (Internal) on VMWare Network       |


## Setting up VMware DC VM 
  - Install Windows Server 2022:
      ![image](https://github.com/user-attachments/assets/8cc399eb-2ea8-42e1-afaf-3848a6bf358b)



    


