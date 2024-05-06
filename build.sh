git submodule update --init --recursive
docker build --build-arg TARGETARCH=arm64 --platform linux/arm64 -t moodist .
docker build \
	--platform linux/arm64 \
	-t moodist \
	.
docker tag moodist agmalpartida/moodist
docker push agmalpartida/moodist
