# DevOpsWorld
This is a simple demo site deployed via Docker &amp; monitored by Uptime Kuma.

Deploy a static HTML/CSS website using Docker on an AWS EC2 instance and monitor its uptime using Uptime Kuma.
Launch Instance EC2 
•  OS: Ubuntu 22.04 LTS
•  Host monitoring with: Uptime Kuma
• open ports in firewall 3001 (Uptime Kuma)
<img width="940" height="397" alt="image" src="https://github.com/user-attachments/assets/de6e9624-e45d-4a20-a12f-708087b1a681" />

Connect your instance with SSH client id
Install Docker url: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04
Clone your GitHub repository on your instance
https://github.com/your-username/DevOpsWorld.git

* Create A Dockerfile
  
 Build and run the container

docker build -t static-site .
docker run -d -p 7000:7000 static-site

docker install url:
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04

Open Url:
http://<your-ec2-ip>:7000

<img width="2014" height="790" alt="image" src="https://github.com/user-attachments/assets/95308a60-632a-44bc-9027-8acebdb1dbb4" />

📈 Step-by-Step Monitoring Setup
1. Install Uptime Kuma (on same or separate EC2)
   
   docker run -d --restart=always -p 3001:3001 \
  -v uptime-kuma:/app/data --name uptime-kuma \
  louislam/uptime-kuma

Access Kuma at: http://<your-ec2-ip>:3001
<img width="663" height="670" alt="image" src="https://github.com/user-attachments/assets/96301d63-ad1a-4387-af15-c6d60077c67c" />


✅ 2. Add Monitoring Target
Go to Kuma dashboard
Click “Add New Monitor”
Type: HTTP(s)
URL: http://<your-ec2-ip>:7000
Set interval (e.g., every 30 seconds)
Save
<img width="876" height="381" alt="image" src="https://github.com/user-attachments/assets/88bff4b5-04c1-4756-8f54-30bcb742e608" />


✅ You’ll now get uptime stats, alerts, and logs!
<img width="940" height="494" alt="image" src="https://github.com/user-attachments/assets/b8df089c-2b2a-40a4-a16c-76d61eae6bf9" />
<img width="914" height="480" alt="image" src="https://github.com/user-attachments/assets/cb4b3d8b-4e5c-4fb7-a787-b62a90112be8" />


