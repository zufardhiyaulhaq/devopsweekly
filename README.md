# devopsweekly

Get data from devops news and create Weekly CRDs based on community-operator and push to git datastore

![Version: 1.1.0](https://img.shields.io/badge/Version-1.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.0](https://img.shields.io/badge/AppVersion-1.1.0-informational?style=flat-square) [![made with Go](https://img.shields.io/badge/made%20with-Go-brightgreen)](http://golang.org) [![Github master branch build](https://img.shields.io/github/workflow/status/zufardhiyaulhaq/devopsweekly/Master)](https://github.com/zufardhiyaulhaq/devopsweekly/actions/workflows/master.yml) [![GitHub issues](https://img.shields.io/github/issues/zufardhiyaulhaq/devopsweekly)](https://github.com/zufardhiyaulhaq/devopsweekly/issues) [![GitHub pull requests](https://img.shields.io/github/issues-pr/zufardhiyaulhaq/devopsweekly)](https://github.com/zufardhiyaulhaq/devopsweekly/pulls)

[![Bugs](https://sonarqube.zufardhiyaulhaq.com/api/project_badges/measure?project=devopsweekly&metric=bugs)](https://sonarqube.zufardhiyaulhaq.com/dashboard?id=devopsweekly) [![Code Smells](https://sonarqube.zufardhiyaulhaq.com/api/project_badges/measure?project=devopsweekly&metric=code_smells)](https://sonarqube.zufardhiyaulhaq.com/dashboard?id=devopsweekly) [![Coverage](https://sonarqube.zufardhiyaulhaq.com/api/project_badges/measure?project=devopsweekly&metric=coverage)](https://sonarqube.zufardhiyaulhaq.com/dashboard?id=devopsweekly) [![Maintainability Rating](https://sonarqube.zufardhiyaulhaq.com/api/project_badges/measure?project=devopsweekly&metric=sqale_rating)](https://sonarqube.zufardhiyaulhaq.com/dashboard?id=devopsweekly) [![Quality Gate Status](https://sonarqube.zufardhiyaulhaq.com/api/project_badges/measure?project=devopsweekly&metric=alert_status)](https://sonarqube.zufardhiyaulhaq.com/dashboard?id=devopsweekly) [![Reliability Rating](https://sonarqube.zufardhiyaulhaq.com/api/project_badges/measure?project=devopsweekly&metric=reliability_rating)](https://sonarqube.zufardhiyaulhaq.com/dashboard?id=devopsweekly) [![Security Rating](https://sonarqube.zufardhiyaulhaq.com/api/project_badges/measure?project=devopsweekly&metric=security_rating)](https://sonarqube.zufardhiyaulhaq.com/dashboard?id=devopsweekly)

## Installing the Chart

To install the chart with the release name `my-release` and secret `foo`:

```console
kubectl apply -f secret.yaml

helm repo add zufardhiyaulhaq https://charts.zufardhiyaulhaq.com/
helm install devopsweekly zufardhiyaulhaq/devopsweekly --values values.yaml --set secret=foo
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cronSchedule | string | `"0 8 * * 0"` |  |
| image.repository | string | `"zufardhiyaulhaq/devopsweekly"` |  |
| image.tag | string | `"v1.1.0"` |  |
| secret | string | `""` |  |
| weekly.community | string | `"DevOps Indonesia Community"` |  |
| weekly.image_url | string | `"https://storage.googleapis.com/blogs-images/ciscoblogs/1/5d37d7284e6e8.png"` |  |
| weekly.namespace | string | `"devops-community"` |  |
| weekly.tags | string | `"weekly,devops"` |  |

