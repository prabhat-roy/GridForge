// scada-gateway — SCADA gateway (DNP3, IEC 61850, Modbus adapters).
// OT-side service. Skeleton: HTTP /healthz on PORT (default 50040).

#include <arpa/inet.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <unistd.h>

#include <atomic>
#include <csignal>
#include <cstdlib>
#include <cstring>
#include <iostream>
#include <string>
#include <thread>

namespace {
std::atomic<bool> running{true};

void on_signal(int) { running = false; }

void handle_client(int client_fd) {
    constexpr char kResponse[] =
        "HTTP/1.1 200 OK\r\n"
        "Content-Type: application/json\r\n"
        "Connection: close\r\n"
        "\r\n"
        "{\"status\":\"ok\",\"service\":\"scada-gateway\"}";
    char buf[1024];
    ::read(client_fd, buf, sizeof(buf));
    ::write(client_fd, kResponse, sizeof(kResponse) - 1);
    ::close(client_fd);
}
}  // namespace

int main() {
    std::signal(SIGINT, on_signal);
    std::signal(SIGTERM, on_signal);

    const char* port_env = std::getenv("PORT");
    int port = port_env ? std::atoi(port_env) : 50040;

    int server_fd = ::socket(AF_INET, SOCK_STREAM, 0);
    if (server_fd < 0) {
        std::cerr << "socket(): " << std::strerror(errno) << "\n";
        return 1;
    }
    int reuse = 1;
    ::setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR, &reuse, sizeof(reuse));

    sockaddr_in addr{};
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = INADDR_ANY;
    addr.sin_port = htons(static_cast<uint16_t>(port));
    if (::bind(server_fd, reinterpret_cast<sockaddr*>(&addr), sizeof(addr)) < 0) {
        std::cerr << "bind(): " << std::strerror(errno) << "\n";
        return 1;
    }
    if (::listen(server_fd, 64) < 0) {
        std::cerr << "listen(): " << std::strerror(errno) << "\n";
        return 1;
    }

    std::cout << "scada-gateway listening on :" << port << "\n";

    while (running) {
        int client_fd = ::accept(server_fd, nullptr, nullptr);
        if (client_fd < 0) {
            if (!running) break;
            continue;
        }
        std::thread(handle_client, client_fd).detach();
    }

    ::close(server_fd);
    std::cout << "scada-gateway shutting down\n";
    return 0;
}
