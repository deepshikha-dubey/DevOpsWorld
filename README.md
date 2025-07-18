# DevOpsWorld
This is a simple demo site deployed via Docker &amp; monitored by Uptime Kuma.

* Create A Dockerfile
 Build and run the container

docker build -t static-site .
docker run -d -p 7000:7000 static-site

docker install url:
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-22-04

Open Url:
http://<your-ec2-ip>:7000
<img width="792" height="674" alt="image" src="https://github.com/user-attachments/assets/e7184b6e-dd91-49c2-ba1f-51bce41c0f18" />

open DevopsWorld folder
<img width="2014" height="790" alt="image" src="https://github.com/user-attachments/assets/95308a60-632a-44bc-9027-8acebdb1dbb4" />

📈 Step-by-Step Monitoring Setup
1. Install Uptime Kuma (on same or separate EC2)
   
   docker run -d --restart=always -p 3001:3001 \
  -v uptime-kuma:/app/data --name uptime-kuma \
  louislam/uptime-kuma

Access Kuma at: http://<your-ec2-ip>:3001

✅ 2. Add Monitoring Target
Go to Kuma dashboard
Click “Add New Monitor”
Type: HTTP(s)
URL: http://<your-ec2-ip>:7000
Set interval (e.g., every 30 seconds)
Save
✅ You’ll now get uptime stats, alerts, and logs!

