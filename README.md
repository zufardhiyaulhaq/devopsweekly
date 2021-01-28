# devopsweekly
Get data from weekly.statuscode.com and create Weekly CRDs based on community-operator & push to datastore

### Installing the charts
```
helm repo add zufardhiyaulhaq https://charts.zufardhiyaulhaq.com/
helm install zufardhiyaulhaq/devopsweekly --name-template devopsweekly -f values.yaml
```

### Configuration

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| community | string | `"DevOps Indonesia Community"` |  |
| cronSchedule | string | `"0 8 * * 6"` |  |
| github.branch | string | `"master"` |  |
| github.organization | string | `"zufardhiyaulhaq"` |  |
| github.repository | string | `"community-ops"` |  |
| github.repository_path | string | `"./manifest/devops-community/"` |  |
| github.token | string | `"your_token"` |  |
| image.name | string | `"devopsweekly"` |  |
| image.repository | string | `"zufardhiyaulhaq/devopsweekly"` |  |
| image.tag | string | `"0.0.1"` |  |
| image_url | string | `"https://storage.googleapis.com/blogs-images/ciscoblogs/1/5d37d7284e6e8.png"` |  |
| jobHistoryLimit | int | `1` |  |
| namespace | string | `"devops-community"` |  |
| tags | string | `"weekly,devops"` |  |
