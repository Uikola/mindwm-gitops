nats_user = "root"
nats_password = "r00tpass"
nats_release_name = "nats"
nats_namespace = "nats"
nats_port = 4222


config = {
    cluster = {
        merge = {
            name = "nats-cluster"
            replicas = 2 # msut be 2 or highr when jetstream is enabled
        }
    }
    jetstream = {
        enabled = True
        fileStore.pvc.size = "2Gi"
    }

    merge = {
        accounts = {
            "$SYS" = {
                users = [
                    {
                        user = "sys"
                        password = "pass"
                    }
                ]
            }
            root = {
                jetstream = "enable"
                users = [
                    {
                        user = nats_user
                        password = nats_password
                    }
                ]
            }
        }
    }
}


NatsJetStreamChannel =  {
    apiVersion = "messaging.knative.dev/v1alpha1"
    kind = "NatsJetStreamChannel"
    metadata = {
        name = "mindwm"
        namespace = "knative-eventing"
    }

}
