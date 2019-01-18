[![](https://images.microbadger.com/badges/image/babim/centos6-gui.svg)](https://microbadger.com/images/babim/centos6-gui "Get your own image badge on microbadger.com")[![](https://images.microbadger.com/badges/version/babim/centos6-gui.svg)](https://microbadger.com/images/babim/centos6-gui "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/babim/centos6-gui:ssh.svg)](https://microbadger.com/images/babim/centos6-gui:ssh "Get your own image badge on microbadger.com")[![](https://images.microbadger.com/badges/version/babim/centos6-gui:ssh.svg)](https://microbadger.com/images/babim/centos6-gui:ssh "Get your own version badge on microbadger.com")

# Usage

`docker run -it --rm -p 5901:5901 -e USER=root babim/centos6-gui`

attach container and enter vnc password (first run)

Connect to vnc://<host>:5901 via VNC client.

Change password over vncpasswd command in container
