sync_master:
	salt.function:
		- tgt: ’puppet.*’
		- cmd.run:
			- name: echo hostname
sync_minion:
	salt.function:
		- tgt: 'minion.*'
		- cmd.run:
			- name: echo hostname