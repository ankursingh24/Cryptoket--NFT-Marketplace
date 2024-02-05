//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
//Version of solidity

import "hardhat/console.sol";
//console.log eql
import "@openzeppelin/contracts/utils/Counters.sol";
//counter 
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
//exposes some function that helps you in storing "tokens uri"=url where your nft will be stored
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
//standard-super easy to develop infrastructure and securing ,quick

contract NFTmarketplace  is ERC71URIStorage {




    address payable owner;
    owner=payable(msg.sender);
    //address which collects ethers from smartcontract

   using Counters for Counters.Counter;
   Counters.Counter private_tokenIds;
   Counters.Counter private_itemSold;

   unint256 listPrice=0.01 ether;

constructor()ERC721("NFTmarketplace",NFTH){
}


struct ListenToken{
    unint256 tokenId;//int store bigger no.
    address payable owner;
    unint256 price;
    address payable seller;
    bool currentlyListed;

}
// we create a mapping if we know tokenid we get all the metadata
mapping(unint256 =>ListenToken)private idtoListedToken;

function updateListPrice(unint256 _listPrice) public payable{
    require(owner=msg.render,"Only owner can update the listing price");
    listPrice=_listPrice;

}

function getListPrice()public view return (uint256){
    return listPrice;
}

function getLatestIdToListedToken() public viw returns (ListenToken memory){
    uint256 currentTokenId=_tokenIds.current();
    return idtoListedToken;
}

function getListedForTokenId(unint256 tokenId) public view return (Listedtoken memory){
    return idtoListedToken(tokenId);
}



//when nft created first time-put on market with certain para
}