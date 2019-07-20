# Write
resource "consul_keys" "write_web_sg_id" {
 key {
   path  = "aulautil/${terraform.workspace}/network/web_sg_id"
   value = "${module.web.sg_id}"
 }
}

# Read
data "consul_keys" "read_web_sg_id" {
 key {
   name = "web_sg_id"
   path = "aulautil/${terraform.workspace}/network/web_sg_id"

   #default = ""
 }
}

resource "consul_keys" "write_web_ip" {
 key {
   path  = "aulautil/${terraform.workspace}/network/public_ip"
   value = "${module.web.ip}"
 }
}

# Read
data "consul_keys" "read_web_ip" {
 key {
   name = "web_ip"
   path = "aulautil/${terraform.workspace}/network/public_ip"

   #default = ""
 }
}

#Write
resource "consul_keys" "write_web_elb_id" {
 key {
   path  = "aulautil/${terraform.workspace}/network/web_elb_id"
   value = "${aws_elb.demo.dns_name}"
 }
}

# Read
data "consul_keys" "read_web_elb_id" {
 key {
   name = "web_elb_id"
   path = "aulautil/${terraform.workspace}/network/web_elb_id"

   #default = ""
 }
}


