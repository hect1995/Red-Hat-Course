# Exercice 2

The `sshd.service` gets automatically launched when the session is started. This service needs to be modified to block user `especial` adding a line in `/etc/ssh/sshd_config`:

    DenyUsers especial

Then, another service needs to be created `sshd-extended.service` using the configuration file in `/etc/ssh/sshd_config-extended`. This configuration file includes:

    Port 2222
    ListenAddress 127.0.0.1
    AllowUsers especial

When the service gets launched we will be able to access the second ssh server as:

    ssh especial@127.0.0.1:2222
