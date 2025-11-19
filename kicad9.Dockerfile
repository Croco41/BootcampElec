FROM kicad/kicad:9.0

ENV DEBIAN_FRONTEND=noninteractive

USER root

# # Install Python, pip, and venv
# RUN apt-get update && apt-get install -y \
#     python3 \
#     python3-pip \
#     python3-venv \
#     && rm -rf /var/lib/apt/lists/*

# # Create a Python virtual environment
# RUN python3 -m venv /opt/venv

# # Activate the virtual environment and install Python packages
# RUN /opt/venv/bin/pip install --upgrade pip \
#     && /opt/venv/bin/pip install git+https://github.com/snhobbs/kicad-testpoints.git \
#     && /opt/venv/bin/pip install git+https://github.com/snhobbs/InteractiveHtmlBom.git

# # Install make
# RUN apt-get update && apt-get install -y \
#     make \
#     xvfb \
#     poppler-utils \
#     && rm -rf /var/lib/apt/lists/*

# # Set environment variables to use the virtual environment
# ENV PATH="/opt/venv/bin:$PATH"
# ENV PYTHONPATH="/usr/lib/python3/dist-packages"

RUN mkdir -p /root/projects \
	&& chown -R $USERNAME:0 /root/projects \
	&& chmod -R g+w /root/projects \
    && mkdir -p /root/config \
    && chown -R $USERNAME:0 /root/config \
    && chmod -R g+w /root/config

# Set environment variables for the new user
ENV HOME=/root
ENV KICAD_CONFIG_HOME=/root/config/kicad
ENV KICAD9_3RD_PARTY=/root/config/plugins
WORKDIR /root

CMD ["bash"]
