# devopsweekly

Get data from devops news and create Weekly CRDs based on community-operator and push to git datastore

![Version: 2.0.0](https://img.shields.io/badge/Version-2.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 2.0.0](https://img.shields.io/badge/AppVersion-2.0.0-informational?style=flat-square) [![made with Go](https://img.shields.io/badge/made%20with-Go-brightgreen)](http://golang.org) [![Github master branch build](https://img.shields.io/github/workflow/status/zufardhiyaulhaq/devopsweekly/Master)](https://github.com/zufardhiyaulhaq/devopsweekly/actions/workflows/master.yml) [![GitHub issues](https://img.shields.io/github/issues/zufardhiyaulhaq/devopsweekly)](https://github.com/zufardhiyaulhaq/devopsweekly/issues) [![GitHub pull requests](https://img.shields.io/github/issues-pr/zufardhiyaulhaq/devopsweekly)](https://github.com/zufardhiyaulhaq/devopsweekly/pulls)

## Installing the Chart

To install the chart with the release name `my-devopsweekly` and secret `foo`:

```console
kubectl apply -f secret.yaml

helm repo add devopsweekly https://zufardhiyaulhaq.com/devopsweekly/charts/releases/
helm install my-devopsweekly devopsweekly/devopsweekly --values values.yaml
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cronSchedule | string | `"0 8 * * 0"` |  |
| image.repository | string | `"zufardhiyaulhaq/devopsweekly"` |  |
| image.tag | string | `"v1.1.0"` |  |
| secret | string | `""` |  |
| weekly.community | string | `"devops"` |  |
| weekly.image_url | string | `"https://storage.googleapis.com/blogs-images/ciscoblogs/1/5d37d7284e6e8.png"` |  |
| weekly.namespace | string | `"community"` |  |
| weekly.tags | string | `"weekly,devops"` |  |

