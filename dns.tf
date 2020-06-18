data "cloudflare_zones" "demo" {
  filter {
    name   = var.domain
    status = "active"
    paused = false
  }
}

locals {
  name = format(
    "%s%s.%s", var.name,
    var.environment != "prod" ? format("-%s", var.environment) : "",
    var.domain
  )
  zone_id = coalesce(
    var.zone_id,
    data.cloudflare_zones.demo.zones.0.id
  )
}

resource "cloudflare_record" "demo" {
  zone_id = local.zone_id
  name    = local.name
  value   = google_compute_instance.haproxy.network_interface.0.access_config.0.nat_ip
  type    = "A"
  ttl     = 120
  proxied = false
}
