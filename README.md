# AIonChain

1. 本项目演示联邦学习方法
2. 模型拥有者将数据分为6份，自己留50%用于训练初步模型，将余下的50%均分到5个edge>设备中（docker）
3. 模型拥有者，将预处理模型（50%数据训练）存放在IPFS中，得到hash地址, ipfs add modelue
4. 将存放在IPFS中的模型hash存放到区块链中
5. 5个edge设备（docker）读取区块链的模型，利用自己的数据来训练模型，将训练好的参
数更新到IPFS中，并将IPFS的hash地址存放到区块链中
6. 第三方机构将更新的模型参数汇集，并将汇集好的模型参数放到IPFS中，hash放到区块>链，模型拥有者读取模型

# 目录说明
notebook：python 智能合约demo
edges: 边缘设备（如手机，ipad等），docker模拟使用自己的隐私数据训练模型
master: 模型拥有者
3th_party: 第三方机构
utils: 工具类
