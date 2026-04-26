# v3-agnostic-lambda-infra

> ⚠️ This project is currently under active development. Documentation will be expanded over time.

## Planned Versioning and Release Strategy

This project is being designed to avoid mutable `latest` image tags for environment deployments.

The planned CI/CD flow will use immutable, traceable artifact versions:

- each CI build will produce an image tagged with the Git commit SHA, for example `sha-a1b2c3d`
- stable releases may additionally receive a Semantic Version tag, for example `v1.0.0`
- the same immutable artifact should be promoted across environments: `dev → test → prod`
- production deployments should reference an explicit, immutable image tag instead of `latest`

This approach is intended to improve deployment traceability, rollback safety, recovery tracking and future DORA metric collection.