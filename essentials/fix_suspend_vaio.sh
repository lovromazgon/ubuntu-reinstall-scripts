#!/bin/bash
sudo sed -i 's/"quiet splash"/"quiet splash acpi_sleep=nonvs"/g' /etc/default/grub

sudo update-grub2
sudo update-initramfs -u