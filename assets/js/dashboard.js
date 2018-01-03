let Dashboard = {
    init(socket) {
        socket.connect()
        let dashChannel = socket.channel("dashboard:activity")

        dashChannel.join()
            .receive("ok", resp => console.log("joined the channel", resp) )
            .receive("error", reason => console.log("join failed", reason) )
    }
}

export default Dashboard