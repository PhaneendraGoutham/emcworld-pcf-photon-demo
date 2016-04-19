# GCP Next Demo Concourse Pipeline

In order to run the GCP Next Demo Concourse Pipeline you must have an existing [Concourse](http://concourse.ci) environment. See [Deploying Concourse on Google Compute Engine](https://github.com/frodenas/bosh-google-cpi-boshrelease/blob/master/docs/deploy_concourse.md) for instructions.

* Target your Concourse CI environment:

```
fly -t google login -c <YOUR CONCOURSE URL>
```

* Update the [credentials.yml](https://github.com/cf-platform-eng/google-cloud-platform-demos/blob/master/ci/credentials.yml) file.

* Set the GCP Next Demo Concourse Pipeline:

```
fly -t google set-pipeline -p gcp-next-demo -c pipeline.yml -l credentials.yml
```

* Unpause the GCP Next Demo Concourse Pipeline:

```
fly -t google unpause-pipeline -p gcp-next-demo
```
