sudo docker build -t container . && sudo docker run -p 1234:1234 -p 3000:3000 --mount src="$(pwd)",target=/work,type=bind -it container #
