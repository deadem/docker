sudo docker build -t container . && sudo docker run --network host --mount src="$(pwd)",target=/work,type=bind -it container #
