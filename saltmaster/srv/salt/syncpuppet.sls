sync_minion:
    salt.state:
        - tgt: 'minion*'
        - sls: minion.sync
