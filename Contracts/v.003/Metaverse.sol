// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Metaverse
{
    struct TLand
    {
        bool isForSale;
        uint price;
        string name;
        address owner;
    }

    uint maxX = 10;
    uint maxY = 5;

    struct TLands
    {
      TLand[10][5] Land;
      bool _init;
    }

    TLands public Lands;

    constructor()
    {
        uint8 x;
        uint8 y;
        for(x=0; x<maxX; x++)
          for(y=0; y<maxY; y++)
          {
            Lands.Land[y][x].owner = msg.sender;
            Lands.Land[y][x].isForSale = false;
          }
    }

    modifier XYcheck(uint x, uint y)
    {
        require(x>=0, "x too small");
        require(x<maxX, "x too big");
        require(y>=0, "y too small");
        require(y<maxY, "y too big");
        _;
    }

    modifier onlyOwner(uint x, uint y)
    {
        require(msg.sender==Lands.Land[y][x].owner, "Only Owner!");
        _;
    }


    function SetPrice(uint x, uint y, uint price)
    public
    XYcheck(x,y)
    onlyOwner(x,y)
    {
        Lands.Land[y][x].price = price;
    }
    function SetIsForSale(uint x, uint y, bool isForSale)
    public
    XYcheck(x,y)
    onlyOwner(x,y)
    {
        Lands.Land[y][x].isForSale = isForSale;
    }
    function SetName(uint x, uint y, string memory name)
    public
    XYcheck(x,y)
    onlyOwner(x,y)
    {
        Lands.Land[y][x].name = name;
    }

    function GetOwner(uint x, uint y)
    public
    view
    XYcheck(x,y)
    returns(address)
    {
        return Lands.Land[y][x].owner;
    }
    function GetPrice(uint x, uint y)
    public
    view
    XYcheck(x,y)
    returns(uint)
    {
        return Lands.Land[y][x].price;
    }
    function GetIsForSale(uint x, uint y)
    public
    view
    XYcheck(x,y)
    returns(bool)
    {
        return Lands.Land[y][x].isForSale;
    }
    function GetName(uint x, uint y)
    public
    view
    XYcheck(x,y)
    returns(string memory _name)
    {
        _name = Lands.Land[y][x].name;
    }
    function GetCurrentState()
    public
    view
    returns(TLands memory)
    {
        return Lands;
    }

    function Buy(uint x, uint y)
    public
    payable
    XYcheck(x,y)
    {
        address newOwner;
        address payable oldOwner;
        uint realPay;
        realPay = msg.value;
        newOwner = msg.sender;
        oldOwner = payable(Lands.Land[y][x].owner);
        require(Lands.Land[y][x].isForSale, "The land is not for sale!");        
        require(realPay >= Lands.Land[y][x].price, "Less then price!");        
        Lands.Land[y][x].owner = newOwner;
        Lands.Land[y][x].isForSale = false;

        (bool success, ) = oldOwner.call{value: realPay}("");
        require(success, "Transfer failed.");

        emit EventDeal( x , y , block.timestamp , realPay , newOwner );
    }

    event EventDeal  ( uint indexed x
                     , uint indexed y
                     , uint indexed dt
                     , uint price
                     , address owner
                     );

}