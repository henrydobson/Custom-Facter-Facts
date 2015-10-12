USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make

TITLE=mac_facts
PACKAGE_NAME=${TITLE}
REVERSE_DOMAIN=com.pebbleit
PACKAGE_VERSION=0.0.5
PAYLOAD=\
	pack-facts \

pack-facts: l_var_lib_puppet
	@sudo mkdir -p ${WORK_D}/var/lib/puppet/lib/facter
	@sudo ${CP} -R facts/ ${WORK_D}/var/lib/puppet/lib/facter
	@sudo chown -R root:wheel ${WORK_D}/var/lib/puppet/lib/facter
	@sudo chmod -R 755 ${WORK_D}/var/lib/puppet/lib/facter
