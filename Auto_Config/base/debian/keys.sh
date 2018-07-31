#!/usr/bin/env bash
#
## ADICIONANDO CHAVES PARA OS REPOSITORIOS PADROES AUTOMATICAMENTE
#
# limpa a tela
clear

# verificando se e root
if [[ `id -u` -ne 0 ]]; then
	printf "PRECISA DE ROOT, SAINDO..."
	exit 1
fi

steam()
{
	printf "\n[*] Adicionando chave STEAM\n"

	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F24AEA9FB05498B7
}

mega()
{
	printf "\n[*] Adicionando chave MEGA\n"
	
	apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4B4E7A9523ACD201
}

main()
{
	# chamando funcoes
	printf "[*] Adicionando chave dos repositorios\n"
	printf "########################################"
	steam
	mega
	printf "########################################\n"
}

# chamando funcao principal
main