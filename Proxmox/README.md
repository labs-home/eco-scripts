# EcoProx - Proxmox Power Management Script

### How to use
1. Save the `proxmox.sh` script to the `/opt` directory.

2. Open your Proxmox terminal.

3. Edit the crontab file using the following command:
    ```sh
    crontab -e
    ```

4. Add the following lines to schedule the `proxmox.sh` script to run every day at 6am and 10pm:
    ```sh
    0 6 * * * /opt/proxmox.sh performance
    0 22 * * * /opt/proxmox.sh powersave
    ```

5. Save and close the crontab file.

Your cronjob is now set up to run the `proxmox.sh` script daily at 6am and 10pm.