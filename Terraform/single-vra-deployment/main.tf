 terraform {
 required_providers {
  vra = {source = "vmware/vra"}
  }
  required_version = ">= 0.13"}
 
 provider "vra" {
   url = var.vra_url
   refresh_token = var.vra_refresh_token
   insecure = true
 }

 data "vra_project" "this" {
    name = ""
 }

 data "vra_catalog_item" "this" {
    name = ""
 }

 locals {
    names = ["Anudeep-VM"]
 }

 resource "vra_deployment" "names" {
  count           = length(local.names)
  name            = "Anudeep-TF1-${local.names[count.index]}"
  owner           = "admin"
  catalog_item_id = data.vra_catalog_item.this.id
  #catalog_version   = data.vra_catalog_item.this.version
  project_id = data.vra_project.this.id
  inputs = {
    ComputeInfra   = jsonencode({ "cpu" = 2, "image" = "Rocky-8-Library-VMs", "memory" = 4096, "disksize" = "10", "disk_count" = 3 })
  }
}