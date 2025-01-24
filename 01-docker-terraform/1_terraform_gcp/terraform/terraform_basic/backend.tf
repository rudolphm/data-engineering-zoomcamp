terraform {
    backend "gcs" {
        bucket  = "io-gcp-labs-tfstate"
    }
}
