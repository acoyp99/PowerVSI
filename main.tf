
resource "ibm_pi_image" "powerimages"{
  pi_image_name         = var.imagename
  pi_image_id           = var.imageid
  pi_cloud_instance_id  = var.powerinstanceid
}

resource "ibm_pi_key" "ssh_key" {
  pi_cloud_instance_id = var.powerinstanceid
  pi_key_name          = var.sshkeyname
  pi_ssh_key           = var.sshkey
}


/* resource "ibm_pi_image" "testacc_image" {
  pi_image_name       = "IBMi-72-09-002"
  pi_image_id         = "2a7f5c83-449e-4778-a9a3-f320588d1256"
  pi_cloud_instance_id = var.powerinstanceid
}  */

resource "ibm_pi_network" "power_networks" {
  count                = 1
  pi_network_name      = var.networkname
  pi_cloud_instance_id = var.powerinstanceid
  pi_network_type      = "pub-vlan"
}

data "ibm_pi_public_network" "dsnetwork" {
  depends_on           = [ibm_pi_network.power_networks]
  pi_cloud_instance_id = var.powerinstanceid
}

resource "ibm_pi_volume" "volume"{
  pi_volume_size       = 10
  pi_volume_name       = "test-volume"
  pi_volume_type       = "tier3"
  pi_volume_shareable  = true
  pi_cloud_instance_id = var.powerinstanceid
}

resource "ibm_pi_instance" "test-instance" {
    pi_memory             = var.memory
    pi_processors         = var.processors
    pi_instance_name      = var.instancename
    pi_proc_type          = "shared"
    pi_image_id           = ibm_pi_image.powerimages.id
    pi_network_ids        = [data.ibm_pi_public_network.dsnetwork.id]
    pi_key_pair_name      = ibm_pi_key.ssh_key.key_id
    pi_sys_type           = "s922"
    pi_cloud_instance_id  = var.powerinstanceid
    pi_volume_ids         = [ibm_pi_volume.volume.volume_id]
} 