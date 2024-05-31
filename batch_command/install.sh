#!/bin/bash  
  
MAX_RETRIES=5  # 设置最大重试次数  
RETRIES=0  
  
package_name="argoverse"  # 要安装的包名  
  
while [[ $RETRIES -lt $MAX_RETRIES ]]; do  
    
    #pip install -e /disk_e/work/data/data_set/argoverse/argoverse-api && break  # # 尝试安装，如果成功则退出循环
    #pip install mayavi
    
    pip install opencv-contrib-python
    
    #pip install "$package_name" && break  # 尝试安装，如果成功则退出循环  
    
    RETRIES=$((RETRIES+1))  
    echo "安装失败，将在 $((MAX_RETRIES-RETRIES)) 秒后重试..."  
    sleep $((MAX_RETRIES-RETRIES))  # 每次重试间隔增加  
done  
  
if [[ $RETRIES -eq $MAX_RETRIES ]]; then  
    echo "经过 $MAX_RETRIES 次重试后，安装仍然失败。"  
else  
    echo "安装成功。"  
fi
