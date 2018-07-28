pragma solidity ^0.4.24;

contract Blackjack {
    // number of decks
    uint NumDecks = 1;
    // deck
    uint Cards[];
    // max number of players
    uint MaxPlayers = 5;
    // player: name, cards, amount
    // players

    function AddPlayer(string name) public;
    function StartGame() public; // options bUseDealer
    function HitOrStand() public; // after all player decide
    function Bid() public; // 

    function GameLoop() private;
    function CreateDeck() private;
    function Shuffle() private;
    function Deal() private;
    //
}


