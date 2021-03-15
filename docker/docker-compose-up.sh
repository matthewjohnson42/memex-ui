# assume directory of invocation is <app_root>/docker
docker build --tag memex-ui:0.0.1 -f Dockerfile ..
docker-compose -f docker-compose.yml up -d
