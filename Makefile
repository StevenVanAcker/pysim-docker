build:
	@docker build -t pysim .

run:
	@docker run --privileged -v /dev:/dev --rm -ti -v /dev:/dev pysim bash -c '( pcscd -f & ); /bin/bash'

