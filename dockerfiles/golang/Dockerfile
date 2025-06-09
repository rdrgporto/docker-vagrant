# We specify the base image we need for our go application
FROM golang:1.24.4 as builder

# We specify Dockerfile's maintener
LABEL maintainer="Rodrigo Porto <https://github.com/rdrgporto>"

# Information about app port
EXPOSE 9000

# Set the current working directory inside the container
WORKDIR /app

# Copy our code to /app
COPY code ./

# Create module app and initialize the go.mod file
RUN go mod init app

# Build binary
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

# We use alpine in order to reduce image size
FROM alpine:3.21.3

# Create app-user (-D Don't assign a password -g Account information)
RUN adduser -D -g '' app-user

# Set the current working directory inside container
WORKDIR /usr/share/app-go

# Copy our binary from builder stage
COPY --from=builder /app/main .

# Set folder permissions
RUN chown -R app-user:app-user /usr/share/app-go

# Use an unprivileged user
USER app-user

# Run our app
CMD ["/usr/share/app-go/main"]
