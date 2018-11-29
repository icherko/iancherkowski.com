# iancherkowski.com
Setup of the site:

Hosted on an AWS EC2 instance running Ubuntu v18.04

Managed using Putty and WinSCP via SSH with ip restriction

Docker used with an official image that includes Alpine, NodeJS, Express and PM2.

Created Docker image using a Dockerfile.

Docker container was run with a bind mount so that html files can be updated on the host without recreating the image. Restart option was used so that site is showing automatically after a reboot of the host.

Image was uploaded and installed on Windows 10 using bind mount. This allows html files to be edited and tested locally before being uploaded to host site.
