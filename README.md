# ceph-deployment

This project is based on [cephadm-ansible], but with some modifications to make it work on **Debian**.
At first try to read the [MAINREADME] and then continue here.

Additionally, two directories have been added:  

- **shgn** – contains the required playbooks.  
- **scripts** – contains executable files based on those playbooks.

## Inventories

- **servers.yml** – contains the names and addresses of the hosts or servers.  
- **inventories.yml** – contains the names and grouping of services such as `mon`, `osd`, and others.

## Execution

The order of execution is as follows. All scripts should be executed from the **root directory of the project**:

```bash
scripts/execPreflight.sh [host_name]
scripts/makeBootstrap.sh
scripts/add_host.sh [host_name]
scripts/add_mon.sh [host_name]
scripts/add_mgr.sh [host_name]
scripts/add_osd.sh [host_name]
scripts/add_pool.sh [host_name]
```


[cephadm-ansible]: https://github.com/ceph/cephadm-ansible
[MAINREADME]: https://github.com/shgninc/ceph-deployment/blob/main/MAINREADME.md
