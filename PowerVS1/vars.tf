variable "ibmcloud_api_key" {
  type        = string
  default     = ""
  description = "API Key to provisioning resources to the account"
}
variable "ibm_region" {
  type        = string
  default     = "us-south"
  description = "description"
}

variable "sshkeyname" {
  type        = string
  default     = "New_ssh"
  description = "Name of the ssh key to be used"
}

variable "sshkey" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDuTxaGNY28hqpU856PRpgRjUa622nPvXHZBZ5Wu9faGyXZj5OFIyYHL8suVrVEUTXXMiNjhoT2FxDhXM21ZBOvvhWCjR3ToI4x+VpUq3VZXodZYakhvj3F5tD5AW7rXUxxABIBVFWys3Lv+7U8/SNKFvZHI3obVvpQw8Rx/cSrV/slc1AU1wELrUAhnQAGmZlb0YHTmzrbXJTmnJCZPIykRTL0uAZLU4lYo7vqHf2xhhxnwSOFmDUs5sPoGb69xwyVuwdGqqtegKc8AU+ufDPBvzYU8kXPhW0ZRDf9A9qussXqqagWkP4vsvdTNvcYhahYkkKPIVUQ0BnluWeqyul9"
  description = "Public ssh key"
}

variable "powerinstanceid" {
  default = "crn:v1:bluemix:public:power-iaas:us-south:a/d756a6aef0ed4d18ad43aa70cfef033d:0626275d-f2d0-44de-8d63-b06a5bab497f::"
  description = "Power Instance associated with the account"
}

variable "imagename" {
  description = "Name of the image key to be used"
  default = "IBMi-72-09-002"
}

variable "imageid" {
  type        = string
  default     = "2a7f5c83-449e-4778-a9a3-f320588d1256"
  description = "Image ID"
}
 
variable "instancename" {
  default = "myinstance"
  description = "Name of the instance"
}

variable "networkname" {
  default = "mypublicnw"
  description = "Name of the network"
}

variable "memory" {
  type        = number
  default     = 2
  description = "RAM of the Power Virtual Instance"
}

variable "processors" {
  type        = number
  default     = 0.25
  description = "CPUs to assign"
} 