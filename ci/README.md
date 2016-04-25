# EMCworld Demo Concourse Pipeline

In order to run the EMC World Demo Concourse Pipeline you must have an existing [Concourse](http://concourse.ci) environment. 

EMC World Concourse URL: http://10.115.73.66:8080/ 

* Target your Concourse CI environment:

```
fly -t photon login -c <YOUR CONCOURSE URL>
```

* Update the [credentials.yml](https://github.com/cf-platform-eng/google-cloud-platform-demos/blob/master/ci/credentials.yml) file.

* Set the GCP Next Demo Concourse Pipeline:

```
fly -t photon set-pipeline -p emcworld-demo -c ci/pipeline.yml -l ci/credentials.yml
```

* Unpause the GCP Next Demo Concourse Pipeline:

```
fly -t photon unpause-pipeline -p emcworld-demo
```
