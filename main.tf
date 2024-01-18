terraform {
  backend "gcs" {
    bucket = "prom_tf"
    prefix = "terraform/state"
  }
}

module "gke_cluster" {
  source         = "git::https://github.com/obezsmertnyi/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = 2
}
