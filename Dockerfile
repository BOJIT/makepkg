FROM archlinux:latest

# Set up makepkg build toolchain
RUN pacman -Syu --noconfirm base-devel namcap

# Create non-root builder user
RUN useradd -m builder
WORKDIR /home/builder

# TEMPORARY - put build files in container (bodge)
COPY src src
COPY dest dest

# Copy entrypoint script to container
COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
