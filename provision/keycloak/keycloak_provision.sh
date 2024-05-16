#!/bin/bash
source /vagrant/environment.properties

echo -e "${ORANGE}Keycloak provisioning ${YELLOW}START${ORANGE}!!!${NC}"

sudo mkdir -p /opt/keycloak/conf

sudo chmod 777 -R /opt/keycloak

# Install java 17
sudo bash /vagrant/provision/java/java17_provision.sh

sudo tar -xvzf /vagrant/provision/keycloak/common/keycloak-22.0.1.tar.gz -C /opt/keycloak --strip-components=1

sudo bash /vagrant/provision/keycloak/common/keycloak_parametrized.sh

sudo cp /vagrant/provision/keycloak/common/scripts/keycloak-* /opt/keycloak/

sudo cp /vagrant/provision/keycloak/common/keycloak.service /etc/systemd/system/keycloak.service
sudo systemctl enable keycloak
sudo systemctl start keycloak

echo -e "${ORANGE}Keycloak provisioning ${GREEN}DONE${ORANGE}!!!${NC}"