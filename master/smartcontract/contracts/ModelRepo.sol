pragma solidity >=0.4.21 <0.6.0;
/*
调试合约方法：
1）truffle develop
2) migrate --reset
3）var modelrepo;
3) ModelRepo.deployed().then((value)=>{modelrepo=value}); 得到合约实例
4) modelrepo.setModel(111,222)  设置值
5) modelrepo.getModel().then((value)=>{console.log(value)}) 得到多变量返回值

*/

// https://www.jianshu.com/p/18e642b7bb6a

contract ModelRepo{

  address owner;
  uint initialError;
  uint targetError;
  bytes32[] modelWeights;

  // function putModel(bytes32[] weights, uint initErr, uint targetErr) public payable {

  function setInitErr(uint initErr) public{
      initialError = initErr;
  }
  function setModel(uint initErr, uint targetErr) public payable {


      owner = msg.sender;
      initialError = initErr;
      targetError = targetErr;




  }
  //https://www.jianshu.com/p/b39a4aed3663

  function getModel() view public returns (address, uint,uint) {
/*
     bytes memory names = new bytes(modelWeights.length);

     for(uint i = 0; i < modelWeights.length; i++) {

           names[i] = modelWeights[i];
       }
*/
     return  (owner, initialError, targetError);
  }

  function getModelInitErr() view public returns (uint){

     return initialError;

  }


}
