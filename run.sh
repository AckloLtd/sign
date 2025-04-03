if [ ! -d "/opt/repos" ]; then
	mkdir /opt/repos
fi
cd /opt/repos
git clone https://github.com/AckloLtd/sign
cd /opt/repos/sign
if [ ! -d "/opt/docuseal" ]; then
        mkdir /opt/docuseal
fi
cp docker-compose.yml /opt/docuseal
cd /opt/docuseal
docker compose up --build -d
