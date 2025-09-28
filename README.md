# ceph-deployment

This project is based on [cephadm-ansible], but with some modifications to make it work on **Debian**.

Additionally, two directories have been added:  

- **shgn** – contains the required playbooks.  
- **scripts** – contains executable files based on those playbooks.

## Inventories

- **servers.yml** – contains the names and addresses of the hosts or servers.  
- **services.yml** – contains the names and grouping of services such as `mon`, `osd`, and others.

## Execution

The order of execution is as follows. All scripts should be executed from the **root directory of the project**:

```bash
scripts/execPreflight.sh
scripts/makeBootstrap.sh
scripts/add_host.sh
scripts/add_mon.sh
scripts/add_mgr.sh
scripts/add_osd.sh
scripts/add_pool.sh
```


[cephadm-ansible]: https://github.com/ceph/cephadm-ansible
