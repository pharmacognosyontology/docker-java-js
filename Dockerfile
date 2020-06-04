FROM openjdk:11-slim
RUN apt-get update && apt-get install -y npm && rm -rf /var/lib/apt/lists/*
