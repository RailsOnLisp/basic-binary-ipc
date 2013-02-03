(in-package "BASIC-BINARY-PACKET.IPC")

;; Socket protocol
(defgeneric close-socket (socket))

;; Stream server protocol
(defgeneric accept-connection (server))
(defgeneric connection-available-p (server))

;; Future connection protocol
(defgeneric determinedp (future-connection))
(defgeneric connection-failed-p (future-connection))
(defgeneric connection-stream (future-connection))

;; Stream protocol
(defgeneric data-available-p (socket-stream))
(defgeneric ready-to-write-p (socket-stream))
(defgeneric remote-disconnected-p (socket-stream))
(defgeneric read-from-stream (socket-stream buffer &key start end))
(defgeneric write-to-stream (socket-stream buffer &key start end))

;; Polling protocol
(defgeneric poll-socket (socket socket-events timeout))
(defgeneric poll-sockets (all-sockets all-socket-events timeout))

;; IPv4 protocol
(defgeneric host-address (ipv4-socket))
(defgeneric port (ipv4-socket))
