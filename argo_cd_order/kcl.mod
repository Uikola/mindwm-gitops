[package]
name = "argo-cd-order"
edition = "v0.1.1"
version = "0.1.1"

[dependencies]
json_merge_patch = { oci = "oci://ghcr.io/kcl-lang/json_merge_patch", tag = "0.1.0" }
k8s = { oci = "oci://ghcr.io/kcl-lang/k8s", tag = "1.29" }
