## Parameters

### kube-scheduler configuration parameters

| Name                                            | Description                                                                                                                      | Value                            |
| ----------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------- |
| `config`                                        | The configuration values for kube-scheduler. Ref: https://kubernetes.io/docs/reference/config-api/kube-scheduler-config.v1beta3/ | `nil`                            |
| `replicaCount`                                  | Number of kube-scheduler pods to run (if running in HA mode, enable `leaderElection` in config)                                  | `1`                              |
| `image.repository`                              | The repository to use for the kube-scheduler image                                                                               | `registry.k8s.io/kube-scheduler` |
| `image.pullPolicy`                              | The pull policy for the kube-scheduler image                                                                                     | `IfNotPresent`                   |
| `image.tag`                                     | The tag for the kube-scheduler image                                                                                             | `v1.24.13`                       |
| `imagePullSecrets`                              | Specify docker-registry secret names as an array                                                                                 | `[]`                             |
| `nameOverride`                                  | String to partially override kube-scheduler.name                                                                                 | `""`                             |
| `fullnameOverride`                              | String to partially override kube-scheduler.name                                                                                 | `""`                             |
| `serviceAccount.create`                         | Specifies whether a ServiceAccount should be created                                                                             | `true`                           |
| `serviceAccount.annotations`                    | Annotations for service account. Evaluated as a template. Only used if `create` is `true`.                                       | `{}`                             |
| `serviceAccount.name`                           | Name of the service account to use. If not set and create is true, a name is generated using the fullname template.              | `""`                             |
| `podAnnotations`                                | Annotations for the kube-scheduler pods                                                                                          | `{}`                             |
| `podSecurityContext`                            | Security context policies to add to the kube-scheduler pods                                                                      | `{}`                             |
| `securityContext`                               | Security context policies to add to the containers                                                                               | `{}`                             |
| `resources.limits.cpu`                          | The resources limits for the kube-scheduler containers                                                                           | `100m`                           |
| `resources.limits.memory`                       | The resources limits for the kube-scheduler containers                                                                           | `128Mi`                          |
| `resources.requests.cpu`                        | The requested cpu for the kube-scheduler containers                                                                              | `100m`                           |
| `resources.requests.memory`                     | The requested memory for the kube-scheduler containers                                                                           | `128Mi`                          |
| `autoscaling.enabled`                           | Enable Horizontal POD autoscaling for kube-scheduler, make sure to enable `leaderElection` in config                             | `false`                          |
| `autoscaling.minReplicas`                       | Minimum number of kube-scheduler replicas                                                                                        | `1`                              |
| `autoscaling.maxReplicas`                       | Maximum number of kube-scheduler replicas                                                                                        | `100`                            |
| `autoscaling.targetCPUUtilizationPercentage`    | Target CPU utilization percentage                                                                                                | `80`                             |
| `autoscaling.targetMemoryUtilizationPercentage` | Target Memory utilization percentage                                                                                             | `80`                             |
| `nodeSelector`                                  | Node labels for kube-scheduler pods assignment                                                                                   | `{}`                             |
| `tolerations`                                   | Tolerations for kube-scheduler pods assignment                                                                                   | `[]`                             |
| `affinity`                                      | Affinity for kube-scheduler pods assignment                                                                                      | `{}`                             |
