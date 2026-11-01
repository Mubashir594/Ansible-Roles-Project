# Ansible Roles – Portfolio Website Deployment

## Project Overview

This project demonstrates the use of **Ansible Roles** to automate the deployment of a static portfolio website on a remote Ubuntu virtual machine using Nginx.

The deployment is managed from an Ansible Control Node, which connects to the target node through SSH and executes the required configuration and deployment tasks.

## Technologies Used

- Ansible
- Ansible Roles
- Linux / Ubuntu
- Nginx Web Server
- YAML
- HTML
- CSS
- SSH
- Git & GitHub

## Project Architecture

The project uses an Ansible Control Node to manage a remote Web Server (Target Node).

1. The Control Node executes the Ansible playbook.
2. Ansible connects to the target node through SSH.
3. Nginx is installed on the target node.
4. Portfolio website files are copied to the web server directory.
5. The Nginx service is started and enabled.

## Project Structure

```text
ansible-roles/
│
├── inventory.ini
├── site.yml
│
├── roles/
│   └── portfolio/
│       ├── defaults/
│       │   └── main.yml
│       ├── files/
│       │   ├── index.html
│       │   ├── about.html
│       │   ├── projects.html
│       │   ├── contact.html
│       │   └── style.css
│       ├── handlers/
│       │   └── main.yml
│       ├── meta/
│       │   └── main.yml
│       ├── tasks/
│       │   └── main.yml
│       ├── templates/
│       └── vars/
│           └── main.yml
│
└── screenshots/
```

## Ansible Role Components

| Directory | Purpose |
|---|---|
| tasks | Contains deployment and configuration tasks |
| defaults | Stores default variable values |
| vars | Stores role-specific variables |
| handlers | Executes notified actions, such as reloading Nginx |
| files | Stores static website files |
| templates | Stores Jinja2 templates |
| meta | Contains role metadata and dependencies |

## Inventory Configuration

The `inventory.ini` file defines the target web server.

Example:

```ini
[web-server]
TARGET_NODE_IP ansible_user=ubuntu
```

Replace `TARGET_NODE_IP` with the actual IP address of the target node.

## Deployment Process

The Ansible role performs the following operations:

1. Updates the Ubuntu package cache.
2. Installs the Nginx web server.
3. Copies the portfolio website files to `/var/www/html/`.
4. Sets the appropriate file ownership and permissions.
5. Starts and enables the Nginx service.
6. Reloads Nginx when website files are changed.

## Execution Instructions

### 1. Check Ansible connectivity

```bash
ansible web-server -i inventory.ini -m ping
```

### 2. Check playbook syntax

```bash
ansible-playbook -i inventory.ini site.yml --syntax-check
```

### 3. Execute the playbook

```bash
ansible-playbook -i inventory.ini site.yml
```

### 4. Verify Nginx service

On the target node:

```bash
sudo systemctl status nginx
```

### 5. Verify website deployment

```bash
ls -la /var/www/html/
```

Access the deployed website using:

```text
http://TARGET_NODE_PUBLIC_IP
```

## Screenshots

The `screenshots/` directory contains evidence of the assignment, including:

- Ansible project directory structure
- Inventory configuration
- Role configuration files
- Successful playbook execution
- Nginx service verification
- Deployed portfolio website pages

## Learning Outcomes

Through this assignment, I gained practical experience in:

- Understanding Ansible Role architecture.
- Organizing automation tasks into reusable components.
- Managing remote Linux servers.
- Installing and configuring Nginx using Ansible.
- Deploying static website files through automation.
- Using handlers, variables and defaults.
- Verifying automated deployments.

## Author

**Muhammed Mubashir MK**

GitHub: [Mubashir594](https://github.com/Mubashir594)

LinkedIn: [Muhammed Mubashir](https://www.linkedin.com/in/mubashir-mubu)

---

*This project was completed as part of my hands-on DevOps learning and Ansible automation practice.*
