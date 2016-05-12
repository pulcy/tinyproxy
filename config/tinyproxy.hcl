job "tinyproxy" {
	task "proxy" {
        global = true
        count = 2
		image = "pulcy/tinyproxy:latest"
		ports = ["0.0.0.0:8288:8288"]
        constraint {
			attribute = "meta.lb"
			value = "true"
		}
	}
}
