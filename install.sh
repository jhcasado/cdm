#!/bin/bash

install -d /usr/bin /etc /usr/share/cdm /usr/share/doc/cdm
install -Dm755 src/cdm src/cdm-xlaunch /usr/bin
install -Dm644 src/cdmrc /etc/cdmrc
install -Dm644 src/cdm-profile.sh /usr/share/cdm
install -Dm644 README.md src/cdm-profile.sh /usr/share/doc/cdm
