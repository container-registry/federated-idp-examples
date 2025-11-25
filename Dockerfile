FROM alpine:latest AS builder
RUN head -c 32 /dev/urandom > /random.bin

FROM scratch
COPY --from=builder /random.bin /data