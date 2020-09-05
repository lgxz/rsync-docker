# What

Rsync daemon (Docker)

# Usage
1. `docker run -d --rm --name rsync -p 8873:873 -v DIR:/pub lgxz/rsync`
2. `rsync rsync://127.0.0.1:8873`

