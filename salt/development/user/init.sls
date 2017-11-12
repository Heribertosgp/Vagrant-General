generic_user:  
  user.present:    
    - name: {{ pillar['dev_user']['name'] }}    
    - shell: /bin/bash    
    - home: /home/{{ pillar['dev_user']['name'] }}    
    - uid: {{ pillar['dev_user']['uid'] }}    
    - password: {{ pillar['dev_user']['password'] }}
