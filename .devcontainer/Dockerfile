# Official Prolog Image: https://hub.docker.com/_/swipl/
FROM swipl:stable

ARG USERNAME=vscode ARG USER_UID=1000 ARG USER_GID=$USER_UID

#RUN groupadd -gid $USER_GID $USERNAME && useradd -uid $USER_UID -gid $USER_GID -m $USERNAME 
RUN apt update && apt upgrade -y && apt install -y sudo

RUN useradd -m $USERNAME -s /bin/bash && \
    echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME

# Set the user to vscode
USER $USERNAME

#&& apt-get update \ && apt-get install -y sudo \ 
# && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \ && chmod 0440 /etc/sudoers.d/$USERNAME