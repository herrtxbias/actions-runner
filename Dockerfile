FROM quay.io/ansible/awx-ee:latest

RUN pip3 install pynetbox netaddr
