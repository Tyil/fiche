#! /usr/bin/env sh

add_arg()
{
	args="${args} $1"
}

main()
{
	args=

	# Enable https links to be returned if $HTTPS is set
	[ -n "$HTTPS" ] && add_arg "-S"

	# Add all arguments
	add_arg "-d ${DOMAIN}"
	add_arg "-p ${PORT}"
	add_arg "-s ${SLUG}"
	add_arg "-B ${BUFFER}"
	add_arg "-o /data"
	add_arg "-l /dev/stdout"

	# Run fiche
	/fiche ${args}
}

main "$@"
